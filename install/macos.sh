#!/usr/bin/env bash

echo -e "\n\nSetting OS X settings"
echo "=============================="

# echo "show hidden files by default"
defaults write com.apple.Finder AppleShowAllFiles -bool false

# echo "only use UTF-8 in Terminal.app"
defaults write com.apple.terminal StringEncodings -array 4

# echo "expand save dialog by default"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# echo "show the ~/Library folder in Finder"
chflags nohidden ~/Library

# echo "disable resume system wide"
# defaults write NSGlobalDomainNSQuitAlwaysKeepWindows -bool false

#echo "Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

#echo "Enable subpixel font rendering on non-Apple LCDs"
defaults write NSGlobalDomain AppleFontSmoothing -int 2

#echo "Use current directory as default search scope in Finder"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

#echo "Show Path bar in Finder"
defaults write com.apple.finder ShowPathbar -bool true

#echo "Show Status bar in Finder"
defaults write com.apple.finder ShowStatusBar -bool true

#echo "Disable the “Are you sure you want to open this application?” dialog"
defaults write com.apple.LaunchServices LSQuarantine -bool false

#echo "Disable shadow in screenshots"
defaults write com.apple.screencapture disable-shadow -bool true

#echo "Disable press-and-hold for keys in favor of key repeat"
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

#echo "Set a shorter Delay until key repeat"
defaults write NSGlobalDomain InitialKeyRepeat -int 15

#echo "Require password immediately after sleep or screen saver begins"
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

#echo "Enable tap to click (Trackpad)"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# Default screenshot folder
defaults write com.apple.screencapture location ~/Desktop/Screenshots

# Fastdock unhide
defaults write com.apple.Dock autohide-delay -float 0 && killall Dock

# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# Use AirDrop over every interface. srsly this should be a default.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Always open everything in Finder's column view.
defaults write com.apple.Finder FXPreferredViewStyle clmv

# Show the ~/Library folder.
chflags nohidden ~/Library

# Set a really fast key repeat.
defaults write NSGlobalDomain KeyRepeat -int 1

# Set the Finder prefs for showing a few different volumes on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

