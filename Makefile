.PHONY: all run-scripts 

all: run-scripts 

run-scripts:
	sudo bash scripts/programs.sh
	sudo bash scripts/fonts.sh
	sudo bash scripts/terminal.sh
	sudo bash scripts/ssh.sh
	sudo bash scripts/symlink.sh
