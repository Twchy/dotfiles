#!/bin/bash

# Exit immediately if any command fails
set -e

EXT_FILE="$(dirname "$0")/extensions.txt"

if [ ! -f "$EXT_FILE" ]; then
  echo "Error: extensions.txt not found at $EXT_FILE"
  exit 1
fi

echo "Installing VS Code extensions from $EXT_FILE..."

while IFS= read -r extension || [ -n "$extension" ]; do
  if [ -n "$extension" ]; then
    echo "Installing: $extension"
    code --install-extension "$extension" || echo "Failed to install: $extension"
  fi
done < "$EXT_FILE"

echo "All extensions processed."

