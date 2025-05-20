#!/bin/bash

# Define backup location
BACKUP_DIR="$HOME/arch_backup"
mkdir -p "$BACKUP_DIR"

echo "Backing up installed packages..."
pacman -Qq > "$BACKUP_DIR/packages.txt"

echo "Archiving entire home directory..."
tar czpvf "$BACKUP_DIR/home_full_backup.tar.gz" "$HOME" --exclude="$HOME/arch_backup"

echo "Backup completed. Store '$BACKUP_DIR' safely!"
