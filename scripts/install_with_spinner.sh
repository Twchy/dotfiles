#!/bin/bash

spinner() {
  local pid=$!
  local delay=0.1
  local spinstr='|/-\'
  while kill -0 "$pid" 2>/dev/null; do
    for (( i=0; i<${#spinstr}; i++ )); do
      printf "\r[%c] %s" "${spinstr:i:1}" "$1"
      sleep $delay
    done
  done
  printf "\r    \r"
}

# Run TPM install with spinner, but capture output to a temp file
(
  if [ ! -d ~/.tmux/plugins/tpm ]; then
    git clone --depth 1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  else
    echo "TPM already installed."
  fi
) > /tmp/tpm_install.log 2>&1 & spinner "Installing TPM..."

# Show TPM install output
cat /tmp/tpm_install.log

# Run brew bundle with spinner, capture output
(
  HOMEBREW_NO_AUTO_UPDATE=1 brew bundle --file=./Brewfile --verbose
) > /tmp/brew_bundle.log 2>&1 & spinner "Running brew bundle..."

# Show brew bundle output
cat /tmp/brew_bundle.log

echo "✅ Installation steps completed."
