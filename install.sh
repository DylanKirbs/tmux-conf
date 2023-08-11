#!/bin/bash

# This script will install and set up the .tmux.conf
# Usage: ./install.sh [options]
# Options:
#   -h, --help      Display this help message

# Parse arguments
while [[ $# -gt 0 ]]; do
    key="$1"
    case $key in
        -h|--help)
            echo "Usage: ./install.sh [options]"
            echo "Options:"
            echo "  -h, --help      Display this help message"
            ;;
        *)
            echo "Unknown option: $key"
            exit 1
            ;;
    esac
done

function cprint() {
    # Usage: cprint <text> <r> <g> <b>
    
    echo -e "\033[38;2;${2};${3};${4}m${1}\033[0m"
}

# Making sure system requirements are met
cprint "Checking system requirements..." 255 255 0
sudo apt update
sudo apt install tmux
sudo apt install curl


cprint "Installing .tmux.conf file..." 255 255 0
cp .tmux.conf ~/

cprint "Installing tpm..." 255 255 0
mkdir -p ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm.git ~/.tmux/plugins/tpm

# source the .tmux.conf file
cprint "Configuring tmux..." 255 255 0
tmux new -d -s configSession
tmux send-keys -t configSession.0 "tmux source-file ~/.tmux.conf" ENTER

cprint "Installing tmux plugins..." 255 255 0
tmux send-keys -t configSession.0 C-I ENTER
tmux send-keys -t configSession.0 "exit" ENTER

cprint "Configuring Powerline theme" 255 255 0
cp -r powerline/themes/* ~/.tmux/plugins/tmux-powerline/themes

cprint "Done!" 0 255 0
