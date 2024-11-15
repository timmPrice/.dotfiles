import os
import subprocess
import shutil
from pathlib import Path

def get_os():
    """Find out what OS/package manager this OS is using."""
    command = ["cat", "/etc/os-release"] 

    try:
        # Run the command and capture output
        result = subprocess.run(
            command,              
            capture_output=True,  
            text=True,            
            check=True            
        )
        print(f"Command succeeded: {command}")
        # print(f"Standard Output:\n{result.stdout}")
        return result.stdout
    except subprocess.CalledProcessError as e:
        print(f"Command failed: {command}")
        print(f"Return Code: {e.returncode}")
        print(f"Standard Error:\n{e.stderr}")
        return None 

def parse_os():
    os_info = get_os()
    os_name = os_info.split('\n', 1)[0] 
    if "Fedora" in os_name:
        return "Fedora"
    elif "Debian" or "Ubuntu" or "POP-OS":
        return "Debian"
    else:
        return "not found"
