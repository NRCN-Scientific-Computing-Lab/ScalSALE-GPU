#!/usr/bin/env python3

import os
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))

from repro_common import delegate_single_permutation


delegate_single_permutation(
    test_name="SERIAL_TIMES",
    expected_mode="serial",
    expected_vendor=os.environ.get("SCALSALE_CPU_VENDOR", "intel"),
    max_tasks_per_node=1,
)
