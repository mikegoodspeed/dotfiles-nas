#!/bin/bash

set -eu

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd ~

# if [[ -e .anyconnect && ! -h .anyconnect ]]; then
#     echo "anyconnect exists and is not a symlink"
# fi

echo "Linking .aliases"
ln -sf $DOTFILES_DIR/.aliases

echo "Linking .bash_profile"
ln -sf $DOTFILES_DIR/.bash_profile

echo "Linking .bashrc"
ln -sf $DOTFILES_DIR/.bashrc

echo "Linking .Brewfile"
ln -sf $DOTFILES_DIR/.Brewfile

echo "Linking .gitconfig"
ln -sf $DOTFILES_DIR/.gitconfig

echo "Linking .inputrc"
ln -sf $DOTFILES_DIR/.inputrc

echo "Linking .vimrc"
mkdir -p .vim/backup .vim/swap .vim/view .vim/undo
ln -sf $DOTFILES_DIR/.vimrc

echo "Linking .zplugrc"
ln -sf $DOTFILES_DIR/.zplugrc

echo "Linking .zshrc"
ln -sf $DOTFILES_DIR/.zshrc

echo "Installing Homebrew bundle"
brew bundle install --global --no-lock
brew bundle cleanup --global --force

echo "Installing Iterm2 Preferences"
ln -sf $DOTFILES_DIR/.iterm.plist ~/Library/Preferences/com.googlecode.iterm2.plist

