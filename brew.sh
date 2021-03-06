#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-brew installed formulae.
brew upgrade

# Install command-line tools using Homebrew
# Usage: `brew bundle Brewfile`

# Make sure we’re using the latest Homebrew
update

# Upgrade any already-brew installed formulae
upgrade

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
# Install some other useful utilities like `sponge`
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`
# brew install gnu-sed --default-names
# Install Bash 4
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash
brew install bash-completion
# Install grc
# brew install grc
# Install spark
# brew install spark

# Install wget with IRI support
# brew install wget --enable-iri

# Install more recent versions of some OS X tools
brew install vim --override-system-vi
# brew install homebrew/dupes/grep
# brew install homebrew/dupes/screen
# brew install homebrew/php/php55 --with-gmp

# Install other useful binaries
# brew install ack
brew install git
brew install hub
brew install heroku-toolbelt
# brew install imagemagick --with-webp
brew install node
brew install p7zip
# brew install pigz
# brew install rhino

# Install Cask
brew install caskroom/cask/brew-cask

# Remove outdated versions from the cellar
cleanup
