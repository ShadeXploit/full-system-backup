#!/bin/bash

# Define backup location
BACKUP_DIR="$HOME/arch_backup"

echo "Restoring installed packages..."
sudo pacman -S - < "$BACKUP_DIR/packages.txt"

echo "Restoring home directory..."
tar xzpvf "$BACKUP_DIR/home_full_backup.tar.gz" -C /

echo "Restoration complete! Restart your session for changes to apply."
