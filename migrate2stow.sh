#!/bin/bash

# Set your stow repository path
STOW_REPO="$HOME/repos/dotfiles"

# Make sure the stow repository exists
if [ ! -d "$STOW_REPO" ]; then
    echo "Error: Stow repository $STOW_REPO does not exist!"
    exit 1
fi

# Change to ~/.config directory
cd "$HOME/.config" || exit 1

echo "Starting migration of config directories to Stow repository..."
echo "Stow repository: $STOW_REPO"
echo ""

# Loop through all directories in ~/.config
for dir in */; do
    # Remove trailing slash
    dir_name="${dir%/}"
    
    # Skip if it's not a directory (shouldn't happen with */ glob, but just in case)
    if [ ! -d "$dir_name" ]; then
        continue
    fi
    
    # Skip if it's already a symlink (likely already managed by stow)
    if [ -L "$dir_name" ]; then
        echo "Skipping $dir_name (already a symlink)"
        continue
    fi
    
    echo "Processing: $dir_name"
    
    # Create the stow package directory structure
    mkdir -p "$STOW_REPO/$dir_name/.config"
    
    # Move the directory to the stow repository
    mv "$HOME/.config/$dir_name" "$STOW_REPO/$dir_name/.config/"
    
    echo "  Created: $STOW_REPO/$dir_name/.config/"
    echo "  Moved: ~/.config/$dir_name -> $STOW_REPO/$dir_name/.config/$dir_name"
    echo ""
done

echo "Migration completed!"
echo ""
echo "Now you can run 'stow' commands from your dotfiles repository:"
echo "cd $STOW_REPO"
echo "stow <package-name>"
