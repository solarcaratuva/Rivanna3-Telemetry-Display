#!/usr/bin/env python3
"""Flash the LVGL display firmware with ST-Link and STM32CubeProgrammer."""

import argparse
from pathlib import Path
import shutil
import subprocess
import sys


ROOT = Path(__file__).resolve().parent
FIRMWARE = ROOT / "build/lvgl/rivanna-lvgl.hex"


def main() -> int:
    parser = argparse.ArgumentParser(description="Flash Rivanna 3 display firmware over ST-Link")
    parser.add_argument("-s", "--silent", action="store_true", help="Show output only on failure")
    parser.add_argument(
        "--under-reset", action="store_true", help="Connect under reset (requires NRST wiring)"
    )
    parser.add_argument(
        "--firmware", type=Path, default=FIRMWARE, help="Firmware .hex or .elf file"
    )
    parser.add_argument(
        "--programmer", default="STM32_Programmer_CLI", help="STM32CubeProgrammer CLI path"
    )
    args = parser.parse_args()

    firmware = args.firmware.resolve()
    if not firmware.is_file():
        print(f"Error: firmware not found: {firmware}\nRun python3 compile.py first.", file=sys.stderr)
        return 1
    programmer = shutil.which(args.programmer)
    if programmer is None:
        print("Error: STM32_Programmer_CLI is not on PATH; use --programmer PATH.", file=sys.stderr)
        return 1

    command = [programmer, "-c", "port=SWD"]
    if args.under_reset:
        command.append("mode=UR")
    command.extend(["-d", str(firmware), "-v", "-rst"])

    try:
        result = subprocess.run(command, capture_output=args.silent, text=args.silent, check=False)
    except OSError as exc:
        print(f"Error starting STM32CubeProgrammer: {exc}", file=sys.stderr)
        return 1
    if result.returncode != 0:
        if args.silent:
            output = (result.stdout or "") + (result.stderr or "")
            print("Upload failed:\n" + "\n".join(output.splitlines()[-30:]), file=sys.stderr)
        return result.returncode
    print(f"Flashed and verified {firmware}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
