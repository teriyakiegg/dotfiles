#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install useful binaries.
brew install git
brew install tig
brew install peco
brew install ghq
brew install fish
brew install fd

# Remove outdated versions from the cellar.
brew cleanup
