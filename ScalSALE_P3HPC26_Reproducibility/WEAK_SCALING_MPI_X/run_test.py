#!/usr/bin/env python3

import os
import sys
from pathlib import Path

TEST_DIR = Path(__file__).resolve().parent
sys.path.insert(0, str(TEST_DIR.parent))

from repro_common import RunConfiguration, parse_suite_args, run_suite


TEST_NAME = "WEAK_SCALING_MPI_X"
PHYSICS = ("lagrange", "euler")
VENDOR = os.environ.get("SCALSALE_CPU_VENDOR", "nvidia")
CONFIGURATIONS = (
    RunConfiguration("16_processes_7_threads", (4, 4, 1), (600, 600, 300), 1, 16),
    RunConfiguration("32_processes_7_threads", (4, 8, 1), (600, 1200, 300), 2, 16),
    RunConfiguration("48_processes_7_threads", (4, 12, 1), (600, 1800, 300), 3, 16),
)


def main() -> None:
    args = parse_suite_args(
        TEST_NAME,
        gpu=False,
    )
    run_suite(
        test_name=TEST_NAME,
        test_dir=TEST_DIR,
        configurations=CONFIGURATIONS,
        physics_array=PHYSICS,
        mode="serial",
        vendor=VENDOR,
        threads=7,
        max_tasks_per_node=16,
        ze_flat_hierarchy=None,
        args=args,
    )


if __name__ == "__main__":
    main()
