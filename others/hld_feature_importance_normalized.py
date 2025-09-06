#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import re
import math
from pathlib import Path
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from textwrap import wrap

# --------------------
# User paths
# --------------------
CSV_PATH_HLD = './trained_models_lightgbm/hld_models/features/hld/top_features_by_descriptor.csv'
CSV_PATH_VA  = './trained_models_lightgbm/va_models/features/va/top_features_by_descriptor.csv'  # Optional for stacked bar
OUTPUT_DIR   = './trained_models_lightgbm/features/hld/visualizations_normalized_percentage'

# --------------------
# Helpers
# --------------------
def slugify(text: str) -> str:
    text = re.sub(r'[\s/\\:]+', '_', text.strip())
    text = re.sub(r'[^A-Za-z0-9._-]+', '', text)
    return text

def ensure_dir(p: str):
    Path(p).mkdir(parents=True, exist_ok=True)

def wrap_labels(labels, width=30):
    return ['\n'.join(wrap(str(l), width=width, break_long_words=False, replace_whitespace=False)) for l in labels]

# --------------------
# Load and normalize
# --------------------
def load_and_normalize(csv_path):
    df = pd.read_csv(csv_path)
    feat_cols  = [f'feat_{i}'  for i in range(1, 11)]
    value_cols = [f'value_{i}' for i in range(1, 11)]
    rows = []
    for _, r in df.iterrows():
        desc = r['descriptor']
        feats  = [r[c] for c in feat_cols]
        vals   = [float(r[c]) if pd.notnull(r[c]) else np.nan for c in value_cols]
        pairs = [(f, v) for f, v in zip(feats, vals) if isinstance(f, str) and pd.notnull(v)]
        gains = [v for _, v in pairs]
        total = np.nansum(gains)
        if total <= 0 or math.isclose(total, 0.0):
            percs = [0.0 for _ in gains]
        else:
            percs = [(v / total) * 100.0 for v in gains]
        for rank, ((feat, gain), perc) in enumerate(zip(pairs, percs), start=1):
            rows.append({
                'descriptor': desc,
                'rank': rank,
                'feature': str(feat),
                'raw_gain': float(gain),
                'perc_gain': float(perc)
            })
    return pd.DataFrame(rows)

ensure_dir(OUTPUT_DIR)

long_hld = load_and_normalize(CSV_PATH_HLD)
long_hld.to_csv(os.path.join(OUTPUT_DIR, 'normalized_top_features_hld_long.csv'), index=False)

# --------------------
# 1) Per-descriptor horizontal bar charts
# --------------------
per_desc_dir = os.path.join(OUTPUT_DIR, 'per_descriptor')
ensure_dir(per_desc_dir)

for desc, g in long_hld.groupby('descriptor'):
    g = g.sort_values('rank')
    features = list(g['feature'])
    percents = list(g['perc_gain'])
    fig, ax = plt.subplots(figsize=(7.2, 4.8))
    y_pos = np.arange(len(features))[::-1]
    ax.barh(y_pos, percents)
    ax.set_yticks(y_pos)
    ax.set_yticklabels(wrap_labels(features, width=35))
    ax.set_xlabel('Importance (% of total gain)')
    ax.set_title(f'{desc} — Top 10 Features (Normalized %)')
    plt.tight_layout()
    plt.savefig(os.path.join(per_desc_dir, f'{slugify(desc)}_top10_normalized.png'))
    plt.close(fig)

# --------------------
# 2) Aggregate mean importance
# --------------------
agg_dir = os.path.join(OUTPUT_DIR, 'aggregate')
ensure_dir(agg_dir)

mean_imp = (long_hld.groupby('feature', as_index=False)['perc_gain']
            .mean().sort_values('perc_gain', ascending=False))
mean_imp.to_csv(os.path.join(agg_dir, 'aggregate_mean_importance.csv'), index=False)

# --------------------
# Heatmap (X = descriptors, Y = features, high-contrast colormap)
# --------------------

# import matplotlib as mpl
# import matplotlib.pyplot as plt
# import seaborn as sns
# import numpy as np

# # Prepare data
# heatmap_data = long_hld.pivot(index='feature', columns='descriptor', values='perc_gain').fillna(0)

# # Get turbo colormap
# turbo = plt.cm.turbo(np.linspace(0, 1, 256))

# # Replace the first color (lowest value) with white
# turbo[0] = [1, 1, 1, 1]  # RGBA for white

# # Create new colormap
# turbo_with_white = mpl.colors.ListedColormap(turbo)

# # Plot heatmap
# plt.figure(figsize=(max(8, 0.4 * heatmap_data.shape[1]), max(8, 0.3 * heatmap_data.shape[0])))
# sns.heatmap(
#     heatmap_data,
#     cmap=turbo_with_white,
#     cbar_kws={'label': '% importance'},
#     linewidths=0.1
# )
# plt.title('Feature Importance Heatmap (Turbo with White at 0)')
# plt.xlabel('Descriptor')
# plt.ylabel('Feature')
# plt.tight_layout()
# plt.savefig(os.path.join(agg_dir, 'feature_importance_heatmap_turbo_white0.png'))
# plt.close()

# heatmap_data = long_hld.pivot(index='feature', columns='descriptor', values='perc_gain').fillna(0)

# plt.figure(figsize=(max(8, 0.4 * heatmap_data.shape[1]), max(8, 0.3 * heatmap_data.shape[0])))
# sns.heatmap(
#     heatmap_data,
#     cmap='YlGnBu',           # high contrast color map
#     cbar_kws={'label': '% importance'},
#     linewidths=0.1
# )
# plt.title('Feature Importance Heatmap (Features x Descriptors)')
# plt.xlabel('Descriptor')
# plt.ylabel('Feature')
# plt.tight_layout()
# plt.savefig(os.path.join(agg_dir, 'feature_importance_heatmap_flipped.png'))
# plt.close()

import matplotlib as mpl
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np

# Pivot data so X = descriptors, Y = features
heatmap_data = long_hld.pivot(index='feature', columns='descriptor', values='perc_gain').fillna(0)

# Get inferno colormap and turn into an array
inferno = plt.cm.inferno(np.linspace(0, 1, 256))

# Replace the first color (lowest value) with white
inferno[0] = [1, 1, 1, 1]  # RGBA for white

# Create a new ListedColormap
inferno_with_white = mpl.colors.ListedColormap(inferno)

# Plot heatmap
plt.figure(figsize=(max(8, 0.4 * heatmap_data.shape[1]), max(8, 0.3 * heatmap_data.shape[0])))
sns.heatmap(
    heatmap_data,
    cmap=inferno_with_white,
    cbar_kws={'label': '% importance'},
    linewidths=0.1
)
plt.title('Feature Importance Heatmap')
plt.xlabel('Descriptor')
plt.ylabel('Feature')
plt.tight_layout()
plt.savefig(os.path.join(agg_dir, 'feature_importance_heatmap_inferno_white0.png'))
plt.close()


# --------------------
# 4) Stacked bar chart (HLD vs VA)
# --------------------
if os.path.exists(CSV_PATH_VA):
    long_va = load_and_normalize(CSV_PATH_VA)
    # Aggregate by feature for each type
    mean_hld = long_hld.groupby('feature', as_index=False)['perc_gain'].mean().rename(columns={'perc_gain': 'HLD_mean%'})
    mean_va  = long_va.groupby('feature', as_index=False)['perc_gain'].mean().rename(columns={'perc_gain': 'VA_mean%'})
    merged = pd.merge(mean_hld, mean_va, on='feature', how='outer').fillna(0)

    # Take top N by combined mean
    merged['combined_mean'] = merged['HLD_mean%'] + merged['VA_mean%']
    top_n = merged.sort_values('combined_mean', ascending=False).head(15)

    fig, ax = plt.subplots(figsize=(8, 5))
    bar_width = 0.4
    x = np.arange(len(top_n))
    ax.bar(x - bar_width/2, top_n['HLD_mean%'], bar_width, label='HLD')
    ax.bar(x + bar_width/2, top_n['VA_mean%'],  bar_width, label='VA')
    ax.set_xticks(x)
    ax.set_xticklabels(wrap_labels(top_n['feature'], width=25), rotation=45, ha='right')
    ax.set_ylabel('Mean importance (% of total gain)')
    ax.set_title('HLD vs VA — Top 15 Features (Normalized %)')
    ax.legend()
    plt.tight_layout()
    plt.savefig(os.path.join(agg_dir, 'stacked_bar_hld_vs_va.png'))
    plt.close()

print("Visualization complete.")
