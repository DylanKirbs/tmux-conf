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

# Making sure system requirements are met
sudo apt update
sudo apt install tmux
sudo apt install curl

echo "Installing .tmux.conf file..."
cp .tmux.conf ~/

echo "Installing tpm..."
mkdir -p ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm.git ~/.tmux/plugins/tpm

# source the .tmux.conf file
echo "Configuring tmux..."
tmux new -d -s configSession
tmux send-keys -t configSession.0 "tmux source-file ~/.tmux.conf" ENTER

echo "Installing tmux plugins..."
tmux send-keys -t configSession.0 C-I ENTER
tmux send-keys -t configSession.0 "exit" ENTER

echo "Configuring Powerline theme"
cp -r powerline/themes/* ~/.tmux/plugins/tmux-powerline/themes

echo "Done!"
