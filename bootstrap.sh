#!/bin/bash

sudo xcode-select --install
sudo xcodebuild -license accept

#!/bin/bash

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" && brew update
brew install libvpx && brew install ffmpeg // --with-libvpx //this is for pano2vr video exports, has to be installed before you install pianobar below.
brew install wget curl git imagemagick exiftool autopano-sift-c pianobar carthage 
brew tap caskroom/cask && brew cask install hugin atom hermes google-chrome blender iterm2

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && \
	echo >> ~/.zprofile && \
	echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile eval "$(/opt/homebrew/bin/brew shellenv)"
brew install zig 
brew istall rust
brew install volta && echo 'export PATH="$HOME/.volta/bin:$PATH"' >> ~/.zshrc && source ~/.zshrc
volta install yarn
volta install node
brew install podman
# DevTools
brew install warp && brew install protobuf
brew install --cask zed
# Photo & Video Production Software / Tools / Libs
brew install --cask blender
brew install --cask imageoptim
brew install ffmpeg
# Reference / Ai / Knowelage Maps
brew install --cask chatgpt
brew install --cask obsidian



# Install ZSH and change default shell to ZSH
brew install zsh && chsh -s /bin/zsh

# Install ZSH Completions
brew install zsh-completions
echo 'fpath=(/usr/local/share/zsh-completions $fpath)' >> ~/.zshrc && cat .zshrc

#  Install .oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Finally switch default shell to ZSH
chsh -s /bin/zsh

##### REFERENCE #####
# http://jilles.me/badassify-your-terminal-and-shell/

##### PLUGINS #####
# plugins=(git git-extras git-flow colored-man colorize github vagrant virtualenv virtualenvwrapper pip python brew osx zsh-syntax-highlighting npm docker django bower celery node sublime sudo supervisor web-search)


mkdir ~/.nvm && touch ~/.profile ~/.zprofile
echo export NVM_DIR=~/.nvm >> ~/.profile && echo export NVM_DIR=~/.nvm >> ~/.zprofile
echo source $(brew --prefix nvm)/nvm.sh >> ~/.profile && echo source $(brew --prefix nvm)/nvm.sh >> ~/.zprofile
source ~/.profile && source ~/.zprofile
brew install nvm && nvm install stable && nvm -v
