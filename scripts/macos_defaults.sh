#!/bin/bash

# Dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock mru-spaces -bool false

# Menu Bar
defaults write NSGlobalDomain _HIHideMenuBar -bool false

# Finder
defaults write com.apple.finder AppleShowAllExtensions -bool true
defaults write com.apple.finder FXArrangeGroupViewBy -string "Kind"
# Remove all .DS_Store files to reset view options
find ~ -name ".DS_Store" -depth -exec rm {} \; 2>/dev/null
# Set default arrangement for all view styles
defaults write com.apple.finder StandardViewOptions -dict-add ColumnShowIcons -bool true
defaults write com.apple.finder StandardViewOptions -dict-add ShowPreview -bool true
defaults write com.apple.finder StandardViewOptions -dict-add ArrangeBy -string "kind"

# Screenshot location (expand ~)
defaults write com.apple.screencapture location "$HOME/Pictures/Screenshots"

# 24-hour time
defaults write NSGlobalDomain AppleICUForce24HourTime -bool true

# Dark mode
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"

# Key repeat
defaults write NSGlobalDomain KeyRepeat -int 2

# Set default wallpaper
WALLPAPER_PATH="$HOME/Pictures/Wallpapers/wallhaven-9omr8k.png"
osascript -e "tell application \"System Events\" to set picture of every desktop to \"$WALLPAPER_PATH\""

# Apply changes
killall Dock
killall Finder

