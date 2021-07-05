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
brew install hub
brew install fish
brew install fd
brew install jq

brew install --cask sequel-ace

# Remove outdated versions from the cellar.
brew cleanup
