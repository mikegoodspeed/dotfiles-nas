#!/bin/bash

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo "Linking .aliases"
ln -sf $DOTFILES_DIR/.aliases ~/.aliases

echo "Linking .bash_profile"
ln -sf $DOTFILES_DIR/.bash_profile ~/.bash_profile

echo "Linking .bashrc"
ln -sf $DOTFILES_DIR/.bashrc ~/.bashrc

echo "Linking .Brewfile"
ln -sf $DOTFILES_DIR/.Brewfile ~/.Brewfile

echo "Linking .gitconfig"
ln -sf $DOTFILES_DIR/.gitconfig ~/.gitconfig

echo "Linking .inputrc"
ln -sf $DOTFILES_DIR/.inputrc ~/.inputrc

echo "Linking .vimrc"
mkdir -p ~/.vim/backup ~/.vim/swap ~/.vim/view .~/vim/undo
ln -sf $DOTFILES_DIR/.vimrc ~/.vimrc

echo "Linking .zlerc"
ln -sf $DOTFILES_DIR/.zlerc ~/.zlerc

echo "Linking .zplugrc"
ln -sf $DOTFILES_DIR/.zplugrc ~/.zplugrc

echo "Linking .zshrc"
ln -sf $DOTFILES_DIR/.zshrc ~/.zshrc

echo "Installing Homebrew bundle"
brew bundle install --global
brew bundle cleanup --global --force
