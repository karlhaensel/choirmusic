﻿import os
import zipfile
import datetime
import sys

main_dir = fr"{os.getcwd()}"

ly_files = []
for folder, _, files in os.walk(main_dir):
    for file in files:
        if file.endswith(".ly"):
            ly_files.append(f"{os.path.join(folder, file)}")

compile_errors = 0
for ly_file in ly_files:
    os.chdir(os.path.dirname(ly_file))
    result = os.system(f"lilypond -dno-point-and-click \"{ly_file}\"")
    if result != 0:
        compile_errors += 1
        print(f"Error occurred while compiling {ly_file}.")
    else:
        print(f"Successfully compiled {ly_file}.")
        # There might still have been warnings during compilation

os.chdir(main_dir)

if compile_errors > 0:
    print(f"Compilation failed for {compile_errors} files. Aborting release.")
    sys.exit(1)

current_date = datetime.datetime.now().strftime("%y-%m-%d")
file_name = f"choirmusic_{current_date}.zip"

if os.path.exists(file_name):
    if decision := input(
        "Existing release. Overwrite? (y/n): "
    ) != "y":
        suffix = input(
            "Please enter a new realease suffix: "
        )
        file_name = f"choirmusic_{current_date}_{suffix}.zip"

with zipfile.ZipFile(file_name, "w") as release_zip:
    for folder, _, files in os.walk(main_dir):
        for file in files:
            if file.endswith(".pdf") or file.endswith(".mid"):
                relative_path = os.path.relpath(
                    os.path.join(folder, file), main_dir
                )
                release_zip.write(
                    os.path.join(folder, file), arcname=relative_path
                )
