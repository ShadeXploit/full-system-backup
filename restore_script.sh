#!/bin/bash

# Define backup location
BACKUP_DIR="$HOME/arch_backup"

# Installing dependices 
sudo pacman -S pv 

echo "Restoring installed packages..."
sudo pacman -S - < "$BACKUP_DIR/packages.txt"

echo "Restoring home directory..."
pv "$BACKUP_DIR/home_full_backup.tar.gz" | tar xpf - -C /

rm -rf ~/full-system-backup
cd ~

echo "Restoration complete! Restart your session for changes to apply."
