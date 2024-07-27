#!/bin/bash

# Clear the console
clear

# Print the title
cat << "EOF"
  ____  _     _                   ____
 / ___|| |__ (_)_ __ ___   ___   | __ ) _   _ _ __   __ _ ___ ___
 \___ \| '_ \| | '__/ _ \ / _ \  |  _ \| | | | '_ \ / _ / __/ __|
  ___) | | | | | | | (_) | (_) | | |_) | |_| | |_) | (_| \__ \__ \
 |____/|_| |_|_|_|  \___/ \___/  |____/ \__, | .__/ \__,_|___/___/
                                        |___/|_|
                 Made by not.shiroo
EOF

echo "Updating and upgrading packages..."
pkg update -y && pkg upgrade -y

echo "Installing Python and pip..."
pkg install python -y
pkg install python-pip -y

echo "Installing required Python packages..."
pip install aiohttp tqdm colorama

echo "Downloading the main script..."
wget https://github.com/shirooscripts/yes/blob/main/shirootool.py -O main_script.py

echo "Setting up complete. You can now run the tool with: python main_script.py"

# Run the main script (optional)
python main_script.py
