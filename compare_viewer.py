import os
import pandas as pd
import numpy as np
import tkinter as tk
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
import matplotlib.pyplot as plt
from scipy.optimize import minimize_scalar

from va_data_loader import load_vad_lexicon, load_descriptor_pairs
from va_utils import euclidean_distance

# ─── Configuration ────────────────────────────────────────────────────────────
MTURK_CSV        = "./datasets/validation/inter_rater_agreement_0.3.csv"
EMO_PRED_CSV     = "./datasets/validation/new_audio_descriptor_scores.csv"
VA_PRED_CSV      = "./datasets/validation/new_audio_predicted_va.csv"
VAD_LEX_DIR      = "./datasets/NRC-VAD-Lexicon-v2.1/OneFilePerDimension"
AROUSAL_PATH     = os.path.join(VAD_LEX_DIR, "arousal-NRC-VAD-Lexicon-v2.1.txt")
VALENCE_PATH     = os.path.join(VAD_LEX_DIR, "valence-NRC-VAD-Lexicon-v2.1.txt")
PAIRS_PATH       = "./datasets/descriptorPairs.txt"

# ─── Load all data once ──────────────────────────────────────────────────────
# MTurk human ratings
mturk = pd.read_csv(MTURK_CSV)
mturk = mturk[mturk['is_valid'].str.lower() == 'yes']
mturk['file'] = (
    mturk['filename']
      .str.replace('.mp3', '', regex=False)
      .str.lower()
)

# LightGBM emo-model predictions
emo = pd.read_csv(EMO_PRED_CSV)
emo['file'] = emo['file'].str.replace('.wav','',regex=False).str.lower()

# Predicted VA for lexicon metric
va = pd.read_csv(VA_PRED_CSV)
va['file'] = va['file'].str.replace('.wav','',regex=False).str.lower()

# Load lexicon + pairs
arousal_lex = load_vad_lexicon(AROUSAL_PATH)
valence_lex = load_vad_lexicon(VALENCE_PATH)
pairs = load_descriptor_pairs(PAIRS_PATH, arousal_lex, valence_lex)

# Build list of descriptors we have both emo & MTurk for
valid = []
for p in pairs:
    d1, d2 = p['d1'], p['d2']
    # If MTurk or emo has ratings for either end, include
    if ((mturk['descriptor']==d1).any() or (mturk['descriptor']==d2).any()) \
    and d1 in emo.columns and d2 in emo.columns:
        valid.append(p)

if not valid:
    raise RuntimeError("No overlapping descriptors between MTurk and emo predictions.")

# ─── Core Tkinter App ────────────────────────────────────────────────────────
class CompareApp:
    def __init__(self, root):
        self.root = root
        root.title("Emo‑Model vs. MTurk & Lexicon‑ε Tuner")
        self.idx = 0
        self.eps = 0.1

        # Prep Matplotlib figures
        self.fig1, self.ax1 = plt.subplots(figsize=(3.8,3.8))
        self.fig2, self.ax2 = plt.subplots(figsize=(3.8,3.8))

        # Canvas 1: emo vs human
        self.canvas1 = FigureCanvasTkAgg(self.fig1, master=root)
        self.canvas1.get_tk_widget().grid(row=0, column=0)
        # Canvas 2: lexicon vs human
        self.canvas2 = FigureCanvasTkAgg(self.fig2, master=root)
        self.canvas2.get_tk_widget().grid(row=0, column=1)

        # Controls
        ctrl = tk.Frame(root)
        ctrl.grid(row=1, column=0, columnspan=2, pady=10)

        tk.Button(ctrl, text="<< Prev", command=self.prev).pack(side=tk.LEFT)
        tk.Button(ctrl, text="Next >>", command=self.next).pack(side=tk.LEFT)

        tk.Label(ctrl, text="log10(ε):").pack(side=tk.LEFT, padx=5)
        self.slider = tk.Scale(ctrl, from_=-4, to=0, resolution=0.01,
                               orient=tk.HORIZONTAL, command=self.on_slider)
        self.slider.set(np.log10(self.eps))
        self.slider.pack(side=tk.LEFT)

        tk.Button(ctrl, text="Optimize ε", command=self.optimize).pack(side=tk.LEFT, padx=10)

        # Initial plot
        self.update_plot()

    def get_data(self):
        """Merge MTurk, emo, and VA for current descriptor."""
        pair = valid[self.idx]
        d1, d2 = pair['d1'], pair['d2']
        # MTurk for either end
        mt = mturk[mturk['descriptor'].isin((d1,d2))]
        # emo model score for whichever side we're plotting (use d1)
        em = emo[['file', d1]].rename(columns={d1: 'model_score'})
        # VA coords
        va_df = va[['file','valence','arousal']]

        # Keep only files present in both MTurk and emo
        df = pd.merge(mt[['file','avg_rating']], em, on='file')
        df = pd.merge(df, va_df, on='file')
        return df, pair

    def update_plot(self):
        df, pair = self.get_data()
        d1, d2 = pair['d1'], pair['d2']
        c1 = np.array(pair['d1_coord'])
        c2 = np.array(pair['d2_coord'])

        # 1) emo vs human
        self.ax1.clear()
        self.ax1.scatter(df['avg_rating'], df['model_score'], alpha=0.7)
        self.ax1.set_xlabel("MTurk avg_rating")
        self.ax1.set_ylabel("Emo‑model score")
        self.ax1.set_title(f"Emo vs MTurk: {d1}/{d2}")
        # 45° line
        m = max(df['avg_rating'].max(), df['model_score'].max(),1)
        self.ax1.plot([0,m],[0,m],'--',color='gray')

        # 2) lexicon vs human
        eps = 10**self.slider.get()
        dist1 = np.sqrt((df['valence']-c1[0])**2 + (df['arousal']-c1[1])**2)
        dist2 = np.sqrt((df['valence']-c2[0])**2 + (df['arousal']-c2[1])**2)
        s1 = 1.0/(eps + dist1)
        s2 = 1.0/(eps + dist2)
        lex_score = s1/(s1+s2)

        self.ax2.clear()
        self.ax2.scatter(df['avg_rating'], lex_score, alpha=0.7, color='C1')
        self.ax2.set_xlabel("MTurk avg_rating")
        self.ax2.set_ylabel("Lexicon score")
        self.ax2.set_title(f"Lexicon(ε={eps:.3f}) vs MTurk")
        self.ax2.plot([0,1],[0,1],'--',color='gray')

        self.canvas1.draw_idle()
        self.canvas2.draw_idle()

    def on_slider(self, _):
        self.update_plot()

    def optimize(self):
        df, pair = self.get_data()
        c1 = np.array(pair['d1_coord']); c2 = np.array(pair['d2_coord'])
        dist1 = np.sqrt((df['valence']-c1[0])**2 + (df['arousal']-c1[1])**2)
        dist2 = np.sqrt((df['valence']-c2[0])**2 + (df['arousal']-c2[1])**2)
        y_true = df['avg_rating'].values

        def total_err(log_eps):
            eps = 10**log_eps
            s1 = 1.0/(eps + dist1)
            s2 = 1.0/(eps + dist2)
            pred = s1/(s1+s2)
            return np.abs(pred - y_true).sum()

        res = minimize_scalar(total_err, bounds=(-4,0), method='bounded')
        if res.success:
            self.slider.set(res.x)
            self.update_plot()

    def prev(self):
        if self.idx>0:
            self.idx -=1
            self.update_plot()

    def next(self):
        if self.idx<len(valid)-1:
            self.idx +=1
            self.update_plot()


if __name__ == "__main__":
    root = tk.Tk()
    app = CompareApp(root)
    root.mainloop()
