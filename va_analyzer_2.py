# va_analyzer.py
import pandas as pd
from va_utils_2 import get_localized_pair_scores

def perform_descriptor_analysis(
    input_va_points_df,
    descriptor_pairs,
    kernel='inverse',
    epsilon=0.1,
    alpha=1.0,
    sigma=0.5,
    w_V=0.5
):
    """
    Args:
        input_va_points_df: DataFrame with columns 'valence', 'arousal', optional 'file'
        descriptor_pairs: list of dicts {d1, d2, d1_coord, d2_coord}
        kernel: 'inverse' or 'gaussian'
        epsilon, alpha, sigma, w_V: hyperparameters as in get_localized_pair_scores
    Returns:
        DataFrame with one row per input point and one column per descriptor word.
    """
    w_A = 1.0 - w_V
    rows = []
    for idx, row in input_va_points_df.iterrows():
        point = [row['valence'], row['arousal']]
        out = {
            'input_point_idx': idx,
            'input_valence': point[0],
            'input_arousal': point[1]
        }
        if 'file' in row:
            out['file'] = row['file']

        for pair in descriptor_pairs:
            d1, d2 = pair['d1'], pair['d2']
            c1, c2 = pair['d1_coord'], pair['d2_coord']
            s1, s2 = get_localized_pair_scores(
                point, c1, c2,
                kernel=kernel,
                epsilon=epsilon,
                alpha=alpha,
                sigma=sigma,
                w_V=w_V,
                w_A=w_A
            )
            out[d1] = s1
            out[d2] = s2

        rows.append(out)

    return pd.DataFrame(rows)
