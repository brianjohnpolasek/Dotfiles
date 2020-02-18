#!/bin/bash

# Ensure root user
if [ "$(id -u)" != "0" ]; then
    echo "User musst be root to run script"
    exit 1
fi

ask_to_install () {
    read -p "$1 (y/n) " -n 1
    echo
    if [ $REPLY = "y" ]; then
        return 1
        echo "1"
    else
        return 0
        echo "0"
    fi
}

ask_to_install "Apply repository updates?"
if [ $? -eq 1 ]; then
    
    # Repository update
    echo "Updating repository dependencies"
    echo
    apt install arc-theme breeze-cursor-theme cmake cmus conky curl feh figlet firefox i3 i3-wm i3lock i3status neofetch network-manager python3 tmux tty-clock 
    
    # Configuration file update
    echo "Updating runtime configuration files"
    echo
    # cp .bashrc .vimrc
    # cp i3 neofetcth vis ~/.config

    echo
    echo "Installation Complete"
fi

echo "------------------------------------------------------------------------"
echo "END"
echo "------------------------------------------------------------------------"
