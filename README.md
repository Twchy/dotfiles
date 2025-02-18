# Dotfiles 🎨✨🛠️

This repository contains my personal dotfiles for setting up my development environment, including configurations for Zsh, Neovim, and other tools. 🎯🔧📂

## Installation 🚀📜💻

Clone the repository and run the install script:

```bash
git clone --recursive https://github.com/twchy/dotfiles.git ~/personal/dotfiles
cd ~/personal/dotfiles
./install
```

The install script uses [Dotbot](https://github.com/anishathalye/dotbot) to manage symlinks and configurations. 🔗⚙️🛠️

## Structure 🏗️📂📜

```
.
├── install                # Installation script
├── install.conf.yaml      # Dotbot configuration
├── neovim                 # Neovim configuration
│   ├── init.lua           # Main Neovim config
│   ├── lua/custom         # Custom plugins
│   ├── lua/kickstart      # Plugin configurations
│   └── README.md          # Neovim-specific README
├── zshrc                  # Zsh configuration folder
└── .dotbot                # Dotbot submodule (cloned if missing)
```

## Features ✨📌🔧

- **Zsh Configuration**: Custom `.zshrc` setup with aliases and plugins.
- **Neovim Setup**: Modern Neovim configuration with Lazy.nvim for plugin management.
- **Dotbot**: Automated symlink creation and environment setup.

## Requirements 📋🔍⚡

Ensure you have the following installed before running the setup:

- Git
- Zsh
- Neovim (optional, if using the Neovim config)


