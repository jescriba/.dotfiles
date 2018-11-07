#!/bin/sh

# Setup submodules 
git submodule update --init --recursive

# Install Homebrew
echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Setup Zsh
echo "Installing zsh"
brew install zsh
echo "Changing to zsh"
chsh -s /bin/zsh

# Zprezto setup
echo "Setting up Zprezto"
setopt EXTENDED_GLOB

# Copy zshrc config
echo "Linking zshrc"
ln -s .zshrc ~/.zshrc

# Install casks and packages designated in Brewfile
brew bundle

# Mention Theme - can I automate this?
echo "tomorrow-theme contains themes for iTerm, Atom, Vim, manually set these up for now.. :/"

# Setup ruby eval command is part of zshrc
rbenv init

# Install Python and Pip
echo "Installing pip for python"
curl -O https://raw.github.com/pypa/pip/master/contrib/get-pip.py
python get-pip.py
