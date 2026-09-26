#!/usr/bin/env python3
"""Build the LVGL display firmware from any working directory."""

import argparse
from pathlib import Path
import subprocess
import sys


ROOT = Path(__file__).resolve().parent
MAKEFILE = ROOT / "Makefile.lvgl"
FIRMWARE = ROOT / "build/lvgl/rivanna-lvgl.hex"


def run_make(arguments: list[str], silent: bool) -> int:
    command = ["make", "-f", str(MAKEFILE), *arguments]
    try:
        result = subprocess.run(
            command,
            cwd=ROOT,
            capture_output=silent,
            text=silent,
            check=False,
        )
    except FileNotFoundError:
        print("Error: make is not installed or is not on PATH.", file=sys.stderr)
        return 1

    if result.returncode != 0 and silent:
        output = (result.stdout or "") + (result.stderr or "")
        print("Build failed:\n" + "\n".join(output.splitlines()[-30:]), file=sys.stderr)
    return result.returncode


def main() -> int:
    parser = argparse.ArgumentParser(description="Build Rivanna 3 display firmware")
    parser.add_argument("-c", "--clean", action="store_true", help="Clean before building")
    parser.add_argument("-s", "--silent", action="store_true", help="Show output only on failure")
    parser.add_argument("-j", "--jobs", type=int, default=4, help="Parallel jobs (default: 4)")
    args = parser.parse_args()

    if args.jobs < 1:
        parser.error("--jobs must be at least 1")
    if args.clean:
        status = run_make(["clean"], args.silent)
        if status:
            return status

    status = run_make([f"-j{args.jobs}"], args.silent)
    if status == 0:
        print(f"Built {FIRMWARE}")
    return status


if __name__ == "__main__":
    sys.exit(main())
