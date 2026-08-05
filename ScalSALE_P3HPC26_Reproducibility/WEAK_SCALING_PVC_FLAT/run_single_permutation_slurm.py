#!/usr/bin/env python3

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from repro_common import delegate_single_permutation


delegate_single_permutation(
    test_name="WEAK_SCALING_PVC_FLAT",
    expected_mode="gpu",
    expected_vendor="intel",
    max_tasks_per_node=8,
    ze_flat_hierarchy="FLAT",
)
