import os
import subprocess
import shutil
from pathlib import Path

programs = [
    "wget",
    "curl",
    "snapd",
    "snap",
    "nvim",
    "tmux",
    "kitty",
    "git",
    "python3",
    "pip",
    "gcc",
    "cargo",
    "fish",
    "clang",
    "gimp",
    "lm_sensors",
    "go"
]

def install_programs(package_manager):
    if package_manager == "dnf":
        for program in programs:
            try:
                subprocess.run(["sudo", "dnf", "install", "-y", program], check=True)
                print(f"Installed {program} successfully.")
    
            except subprocess.CalledProcessError as e:
                print(f"Failed to install {program}: {e}")
                exit(1)

    elif package_manager == "apt":
        for program in programs:
            try:
                subprocess.run(["sudo", "apt-get", "install", "-y", program], check=True)
                print(f"Installed {program} successfully.")
    
            except subprocess.CalledProcessError as e:
                print(f"Failed to install {program}: {e}")
                exit(1)
