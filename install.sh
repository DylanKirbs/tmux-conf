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
            echo "  -f, --force     Force overwrite of existing .vimrc file"
            echo "  -v, --vim       Install for vim instead of neovim"
            exit 0
            ;;
        *)
            echo "Unknown option: $key"
            exit 1
            ;;
    esac
done

echo "Installing .tmux.conf file..."
cp .vimrc ~/.vimrc

echo "Installing poweline theme..."
cp -r powerline/themes/ ~/.tmux/plugins/tmux-powerline/

# source the .tmux.conf file
echo "Run the command in tmux to source .tmux.conf file..."
echo tmux source-file ~/.tmux.conf

echo "Done!"
