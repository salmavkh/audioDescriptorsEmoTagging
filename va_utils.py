# va_utils.py
import numpy as np

def euclidean_distance(p1, p2):
    """Calculates the Euclidean distance between two 2D points."""
    return np.sqrt((p2[0] - p1[0])**2 + (p2[1] - p1[1])**2)

def get_localized_pair_scores(target_va_coord, concept1_coord, concept2_coord):
    """
    Calculates how 'concept1-like' and 'concept2-like' a target VA coordinate is,
    using a direct distance-ratio kernel.
    
    Returns (score1, score2) in [0,1], summing to 1.
    """
    d1 = euclidean_distance(target_va_coord, concept1_coord)
    d2 = euclidean_distance(target_va_coord, concept2_coord)

    # both descriptors coincide
    if d1 == 0 and d2 == 0:
        return 0.5, 0.5
    # target exactly on concept1
    if d1 == 0:
        return 1.0, 0.0
    # target exactly on concept2
    if d2 == 0:
        return 0.0, 1.0

    # raw weights: distance to the opposite anchor
    w1 = d2
    w2 = d1

    # normalize to sum=1
    total = w1 + w2
    score1 = w1 / total
    score2 = w2 / total
    return score1, score2
