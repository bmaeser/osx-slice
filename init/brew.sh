#!/usr/bin/env bash


which -s brew
if [[ $? != 0 ]] ; then
    echo "Homebrew is not installed, abort"
    exit 1
fi

## udpate and upgrade brew

brew update
brew upgrade


## brew install all the things

brew install coreutils # GNU core utilities (those that come with OS X are outdated)
brew install pwgen
brew install htop
brew install tree
brew install bash-completion




# brwe cask install all the things
brew tap phinze/homebrew-cask
brew install brew-cask

function installcask() {
    brew cask install --appdir=/Applications "${@}" 2> /dev/null
    #brew cask uninstall "${@}" 2> /dev/null
}

installcask alfred
installcask brackets
installcask chicken
installcask cyberduck
installcask dropbox
installcask firefox
installcask github
installcask google-chrome
installcask google-chrome-canary
installcask google-drive
installcask iterm2
installcask istat-menus
installcask libre-office
installcask macvim
installcask mou
installcask skype
installcask spotify
installcask slate
installcask sublime-text
installcask textmate
installcask vagrant
installcask virtualbox
installcask vlc

# Remove outdated versions from the cellar
brew cleanup
