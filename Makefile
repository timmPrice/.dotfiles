.PHONY: all run-scripts 

all: run-scripts 

run-scripts:
	python3 python-scripts/install.py	
	# sudo bash scripts/fonts.sh
	sudo bash scripts/terminal.sh
	sudo bash scripts/ssh.sh
	sudo bash scripts/symlink.sh
