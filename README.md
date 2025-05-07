# 🔧 Dotfiles

A collection of my personal dotfiles for setting up the perfect development environment

## ✨ Overview

This repository contains configurations for:
- Nix package manager
- nix-darwin (macOS system configuration)
- Neovim editor
- Tmux terminal multiplexer
- Zsh shell

## 📋 Prerequisites

Some packages and setup are required before installation:

### 1. Install Nix Package Manager

```bash
# For Linux/macOS
sh <(curl -L https://nixos.org/nix/install) --daemon
```

### 2. Set up nix-darwin (macOS only)

```bash
# Using Nixpkgs unstable
nix run nix-darwin/master#darwin-rebuild -- switch

# OR using Nixpkgs 24.11
nix run nix-darwin/nix-darwin-24.11#darwin-rebuild -- switch
```

### 3. Set up Homebrew (optional but recommended)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## 🚀 Installation

### 1. Clone the repository

```bash
git clone --recursive https://github.com/twchy/dotfiles.git ~/Personal/dotfiles
cd ~/Personal/dotfiles
```

### 2. Configure your system

Make sure to have the correct hostname in `flake.nix` and username in `home.nix`:

```bash
# Verify your hostname
scutil --get LocalHostName
```

### 3. Run the rebuild command

```bash
darwin-rebuild switch --flake ~/.config/nix-darwin#Maximus --impure
```

> ℹ️ The `--impure` flag is required to allow Neovim config to be loaded dynamically, so that config changes don't require rebuilding

## 🛠️ Key Features

- **Declarative Configuration**: All system settings defined in code
- **Reproducible Environment**: Same setup across different machines
- **Modern Tools**: Configured with the latest developer tools
- **Version Control**: Track changes to your environment over time
- **Modular**: Easy to add or remove components

## 📦 Included Tools

- **Neovim**: Modern text editor with LSP support
- **Tmux**: Terminal multiplexer for better productivity
- **Zsh**: Feature-rich shell with custom configuration
- **Nix**: Reproducible package management
- **nix-darwin**: System-level configuration for macOS

## 🔄 Updating

To update your environment after making changes:

```bash
darwin-rebuild switch --flake ~/.config/nix-darwin#Maximus --impure
```

