# 🔧 Dotfiles

A collection of my personal dotfiles for setting up the perfect development environment

## ✨ Overview

This repository contains configurations for:
- **Dotbot** for configuration management
- **Homebrew** for package management
- **Ghostty** terminal emulator
- **Tmux** terminal multiplexer
- **Zsh** shell with custom configuration
- **Fastfetch** system information display

## 📋 Prerequisites

Some packages and setup are required before installation:

### 1. Install Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 2. Ensure Git is available

```bash
# Homebrew should handle this, but just in case
brew install git
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
- Install all packages from the `Brewfile`
- Set up Tmux Plugin Manager (TPM)
- Apply macOS system defaults
- Link all configuration files to their proper locations

### 3. Restart your shell

```bash
source ~/.zshrc
```

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
- Custom dock behavior
- Screenshot location configuration
- 24-hour time format
- Optimized key repeat settings

