#!/bin/bash

# Based on:
# https://github.com/forestgagnon/dotfiles/blob/c0fd4e523502d8a13f7de14c568634f5b28b1e97/link.sh

function symlink {
  ln -sf $1 $2
}

DIR=$(dirname "$0")
PARENT_PATH=$(pwd -P)
CONFIG_DIR="${PARENT_PATH}/${DIR}"

if [ -n "$WSL_DISTRO_NAME" ]
then
VSCODE_SETTINGS_DIR="$HOME/.vscode-server/data/Machine"
else
VSCODE_SETTINGS_DIR="$HOME/Library/Application Support/Code/User"
fi

cd ~

# config
symlink "$CONFIG_DIR/.bash_profile" .bash_profile
symlink "$CONFIG_DIR/.agignore" .agignore
symlink "$CONFIG_DIR/.vimrc" .vimrc
symlink "$CONFIG_DIR/.zshrc" .zshrc

# vscode
cd "$VSCODE_SETTINGS_DIR"
symlink "$CONFIG_DIR/vscode/settings.json" settings.json
symlink "$CONFIG_DIR/vscode/keybindings.json" keybindings.json
cd ~
