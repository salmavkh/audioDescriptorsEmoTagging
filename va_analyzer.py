# va_analyzer.py
import pandas as pd
from va_utils import get_localized_pair_scores

def perform_descriptor_analysis(input_va_points_df, descriptor_pairs):
    """
    Calculates descriptor values for each input VA point based on descriptor pairs.
    Now uses distance-ratio scoring via get_localized_pair_scores().
    """
    results = []
    if not descriptor_pairs:
        print("No descriptor pairs provided for analysis.")
        return pd.DataFrame()

    print("\nCalculating descriptor values for each input VA point...")
    for idx, row in input_va_points_df.iterrows():
        v, a = row['valence'], row['arousal']
        rec = {
            'input_point_idx': idx,
            'input_valence': v,
            'input_arousal': a
        }
        if 'file' in row:
            rec['file'] = row['file']

        for pair in descriptor_pairs:
            d1, d2 = pair['d1'], pair['d2']
            c1, c2 = pair['d1_coord'], pair['d2_coord']
            s1, s2 = get_localized_pair_scores((v, a), c1, c2)
            rec[d1] = s1
            rec[d2] = s2

        results.append(rec)

    print("Analysis complete.")
    return pd.DataFrame(results)
