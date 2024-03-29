#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install useful binaries.
brew install tig
brew install peco
brew install ghq
brew install hub
brew install fish
brew install fd
brew install jq
brew install java11
brew install gradle

brew install --cask sequel-ace
brew install --cask docker
brew install --cask alfred

# Remove outdated versions from the cellar.
brew cleanup
