#!/bin/bash

# Dock
defaults write com.apple.dock autohide -bool false
defaults write com.apple.dock mru-spaces -bool false

# Menu Bar
defaults write NSGlobalDomain _HIHideMenuBar -bool false

# Finder
defaults write com.apple.finder AppleShowAllExtensions -bool true

# Screenshot location (expand ~)
defaults write com.apple.screencapture location "${HOME}/Pictures/Screenshots"

# 24-hour time
defaults write NSGlobalDomain AppleICUForce24HourTime -bool true

# Dark mode
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"

# Key repeat
defaults write NSGlobalDomain KeyRepeat -int 2

# Apply changes
killall Dock
killall Finder
