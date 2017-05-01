#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Make ZSH the default shell environment
chsh -s $(which zsh)

# install Nodejs
nvm install 6

# All `npm install <pkg>` commands will pin to the version that was available at the time you run the command
npm config set save-exact = true

# Install global NPM packages
npm install -g yarn gulp yo

# Install SDKMAN (for managing JVM stuff)
curl -s "https://get.sdkman.io" | bash
source "/Users/kevinrogiers/.sdkman/bin/sdkman-init.sh"

# Install JVM stuff
# REMARK: installing java requires you to accept the license,
#         which means some user interaction is required during the install script
sdk install java
sdk install maven
sdk install gradle

# Set macOS preferences
# We will run this last because this will reload the shell
source .macos
