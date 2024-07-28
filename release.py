import os
import zipfile
import datetime

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

current_directory = os.getcwd()

with zipfile.ZipFile(file_name, "w") as release_zip:
    for folder, _, files in os.walk(current_directory):
        for file in files:
            if file.endswith(".pdf") or file.endswith(".mid"):
                relative_path = os.path.relpath(
                    os.path.join(folder, file), current_directory
                )
                release_zip.write(
                    os.path.join(folder, file), arcname=relative_path
                )
