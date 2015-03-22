#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install native apps
# Usage: `brew bundle Caskfile`

brew install caskroom/cask/brew-cask
brew tap caskroom/versions

brew cask install dropbox 2> /dev/null
brew cask install google-chrome 2> /dev/null
brew cask install google-chrome-canary 2> /dev/null
brew cask install iterm2 2> /dev/null
# cask install sublime-text 2> /dev/null
brew cask install the-unarchiver 2> /dev/null
brew cask install torbrowser 2> /dev/null
brew cask install transmission 2> /dev/null
brew cask install virtualbox 2> /dev/null
brew cask install vlc 2> /dev/null
brew cask install alfred 2> /dev/null
brew cask install divvy 2> /dev/null
brew cask install istat-menus 2> /dev/null
brew cask install cakebrew 2> /dev/null
brew cask install spotify 2> /dev/null
brew cask install xquartz 2> /dev/null
brew cask install fantastical 2> /dev/null
brew cask install imagealpha 2> /dev/null
brew cask install imageoptim 2> /dev/null


