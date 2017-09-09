#!/bin/sh

# Install iTerm2
echo "Installing iTerm2"
curl -L -o iterm2 https://www.iterm2.com/downloads/stable/latest
# TODO 

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
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  done
done

# Install fasd 
echo "Installing fasd"
brew install fasd

# Copy zshrc config
echo "Copying zshrc"
cp .zshrc ~/.zshrc

# Mention Theme - can I automate this?
echo "tomorrow-theme contains themes for iTerm, Atom, Vim"

# Install Atom text editor
echo "Installing Atom"
curl -L -o Atom https://atom.io/download/mac
# TODO

# Install Ruby with Rbenv and Bundler
echo "Installing Rbenv to manage ruby"
brew install rbenv
rbenv init

# Install Python and Pip
echo "Installing Python and pip"
brew install python
curl -O https://raw.github.com/pypa/pip/master/contrib/get-pip.py
python get-pip.py
