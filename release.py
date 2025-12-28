# Script to prepare a new release as a zip of PDFs and MIDIs on GitHub.

import datetime as dt
import logging
from pathlib import Path
import shutil
import subprocess
from zipfile import ZipFile


CHOIRMUSIC_DIR = Path(__file__).resolve().parent
LOG_DIR = CHOIRMUSIC_DIR / ".release_logs"
LOG_LEVEL = logging.INFO

def setup_logging() -> None:
    start_time = dt.datetime.now().strftime("%Y-%m-%d_%H-%M-%S")
    log_file = LOG_DIR / f"release_{start_time}.log"

    LOG_DIR.mkdir(parents=True, exist_ok=True)

    logging.basicConfig(
        level=LOG_LEVEL,
        format="%(asctime)s %(levelname)s: %(message)s",
        handlers=[
            logging.FileHandler(log_file, encoding="utf-8"),
            logging.StreamHandler(),
        ],
    )

    logging.info(f"Logging started. Log file: {log_file}")


def check_lilypond() -> None:
    if shutil.which("lilypond") is None:
        raise FileNotFoundError(
            "'lilypond' was not found in PATH. Please install and/or add to your PATH."
        )


def clean_up() -> None:
    removed = 0
    errors = 0

    for path in CHOIRMUSIC_DIR.rglob("*"):
        if path.is_file() and path.suffix.lower() in {".pdf", ".mid"}:
            try:
                path.unlink()
                removed += 1
                logging.debug(f"Removed {path.relative_to(CHOIRMUSIC_DIR)}")
            except Exception as e:
                errors += 1
                logging.error(f"Failed to remove {path.relative_to(CHOIRMUSIC_DIR)}: {e}")
                raise

    logging.info(f"Cleanup complete: removed {removed} PDF and MIDI files.")


def compile_lilypond() -> None:
    ly_files = list(CHOIRMUSIC_DIR.rglob("*.ly"))

    compile_errors = 0
    for ly_file in ly_files:
        result = subprocess.run(
            ["lilypond", "-dno-point-and-click", ly_file.name],
            cwd=ly_file.parent,
        )  # Deactivating point-and-click for smaller file size and security.

        ly_file_relative = ly_file.relative_to(CHOIRMUSIC_DIR)
        if result.returncode != 0:
            compile_errors += 1
            logging.error(
                f"Lilypond error occurred while compiling {ly_file_relative}."
            )
        else:
            logging.debug(
                f"Successfully compiled {ly_file_relative}. CAUTION: There might still have been warnings during compilation"
            )

    if compile_errors > 0:
        logging.error(
            f"Compilation failed for {compile_errors} files. Aborting release."
        )
        raise SystemExit(1)
    else:
        logging.info("Successfully compiled all Lilypond files.")


def zip_files() -> None:
    current_date = dt.datetime.now().strftime("%y-%m-%d")
    file_name = f"choirmusic_{current_date}.zip"
    zip_path = CHOIRMUSIC_DIR / file_name

    if zip_path.exists():
        logging.warning("Existing release for today. Asking for override.")
        if input("Overwrite? (y/n): ") != "y":
            suffix = input("Please enter a new release suffix: ")
            file_name = f"choirmusic_{current_date}_{suffix}.zip"
            zip_path = CHOIRMUSIC_DIR / file_name
            logging.info(
                f'Adding new release for today with suffix "{suffix}" as {zip_path.resolve()}.'
            )
        else:
            logging.info(
                f"Overwriting existing release {zip_path.resolve()} as requested."
            )

    # Create zip with PDFs and MIDIs, preserving relative paths.
    with ZipFile(zip_path, "w") as release_zip:
        for path in CHOIRMUSIC_DIR.rglob("*"):
            if path.is_file() and (path.suffix in {".pdf", ".mid"}):
                relative_path = path.relative_to(CHOIRMUSIC_DIR)
                release_zip.write(path, arcname=relative_path)
    logging.info(
        f"Successfully created zip file {zip_path.resolve()} with PDF and MIDI files for release."
    )


def main() -> None:
    setup_logging()

    try:
        check_lilypond()
    except FileNotFoundError as e:
        logging.error(e)
        raise SystemExit(1) from e

    clean_up()
    compile_lilypond()
    zip_files()


if __name__ == "__main__":
    main()
