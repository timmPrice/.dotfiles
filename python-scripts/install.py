from os_info import parse_os 
from get_programs import install_programs

def main():
    os_name = parse_os()
    if os_name == "Fedora": 
        install_programs("dnf")
    elif os_name == "Debian":
        install_programs("apt")


if __name__ == "__main__":
    main()

