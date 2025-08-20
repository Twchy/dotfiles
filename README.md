# 🔧 Dotfiles

A collection of my personal dotfiles for setting up the perfect development environment

## ✨ Overview

This repository contains configurations for:

- **Dotbot** for configuration management
- **Homebrew** for package management
- **Ghostty** terminal emulator
- **Neovim** modern text editor
- **Tmux** terminal multiplexer
- **Zsh** shell with custom configuration
- **Starship** cross-shell prompt
- **Fastfetch** system information display

## 📋 Prerequisites

The installation script will automatically handle most prerequisites, but you'll need:

### 1. Git (for cloning the repository)

Git should already be available on macOS, but if needed:

```bash
# On macOS, install via Xcode Command Line Tools
xcode-select --install
```

## 🚀 Installation

### 1. Clone the repository

```bash
git clone --recursive https://github.com/twchy/dotfiles.git ~/Personal/dotfiles
cd ~/Personal/dotfiles
```

### 2. Run the installation script

```bash
./install
```

This will:

- **Automatically install Homebrew** if not already present
- **Install Dotbot** for configuration management
- **Apply macOS system defaults** (including Finder sort by kind)
- **Link all configuration files** to their proper locations
- **Set up custom wallpaper** automatically

### 3. Complete the setup

```bash
source ~/.zshrc && brewsync
```

This will reload your shell configuration and install all Homebrew packages from the Brewfile.

## 🛠️ Key Features

- **Simple Setup**: One-command installation with Dotbot
- **Homebrew Integration**: Easy package management with Brewfile
- **Cross-platform**: Works on macOS and Linux
- **Modular**: Easy to add or remove components
- **Version Control**: Track changes to your environment over time

## 📦 Included Tools

- **Ghostty**: Modern terminal emulator
- **Tmux**: Terminal multiplexer for better productivity
- **Zsh**: Feature-rich shell with custom configuration
- **Fastfetch**: System information display
- **Neovim**: Modern text editor
- **Starship**: Customizable shell prompt
- **Various CLI tools**: kubectl, helm, lazygit, btop, and more

## 🔄 Updating

To update your environment after making changes:

```bash
# Update Homebrew packages
brew bundle --file=./Brewfile

# Re-run the installation script to sync changes
./install
```

### Useful Aliases

After installation, you'll have these helpful aliases available:

```bash
# Edit the Brewfile in Neovim
brewedit

# Sync Brewfile with installed packages and cleanup
brewsync

# Navigate to dotfiles directory
dotfiles

# Navigate to development projects
devprojects

# Navigate to work directory
workdev

# Git shortcuts
gadd      # git add
gc        # git commit -m
gcm       # git commit --amend
gp        # git push
```

## 📁 Configuration Files

- `~/.zshrc` - Zsh configuration
- `~/.tmux.conf` - Tmux configuration
- `~/.config/ghostty/` - Ghostty terminal configuration
- `~/.config/fastfetch/` - Fastfetch configuration
- `~/Pictures/Wallpapers/` - Wallpaper collection
- `~/.scripts/` - Custom shell scripts

## 🎨 Customization

The setup includes:

- Dark mode macOS defaults
- Auto-hiding dock with MRU spaces disabled
- Finder sorted by kind by default
- Custom wallpaper setup
- Screenshot location configuration (~/Pictures/Screenshots)
- 24-hour time format
- Optimized key repeat settings
