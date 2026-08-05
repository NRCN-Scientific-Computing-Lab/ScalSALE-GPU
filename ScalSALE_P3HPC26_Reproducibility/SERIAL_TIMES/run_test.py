#!/usr/bin/env python3

import os
import sys
from pathlib import Path

TEST_DIR = Path(__file__).resolve().parent
sys.path.insert(0, str(TEST_DIR.parent))

from repro_common import RunConfiguration, parse_suite_args, run_suite


TEST_NAME = "SERIAL_TIMES"
PHYSICS = ("lagrange", "euler")
VENDOR = os.environ.get("SCALSALE_CPU_VENDOR", "nvidia")

# Every unique global problem size used by the weak-scaling suites above.
PROBLEM_SIZES = (
    (300, 300, 300),
    (300, 300, 600),
    (300, 600, 600),
    (300, 1200, 600),
    (300, 1800, 600),
    (596, 600, 301),
    (600, 600, 300),
    (596, 1200, 301),
    (600, 1200, 300),
    (894, 1200, 301),
    (600, 1800, 300),
)
CONFIGURATIONS = tuple(
    RunConfiguration(
        "grid_{0}x{1}x{2}".format(*grid),
        (1, 1, 1),
        grid,
        1,
        1,
    )
    for grid in PROBLEM_SIZES
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
        threads=1,
        max_tasks_per_node=1,
        ze_flat_hierarchy=None,
        args=args,
    )


if __name__ == "__main__":
    main()
