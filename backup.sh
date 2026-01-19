#!/bin/bash

# Ask user for directory path
read -p "Enter the directory path to backup: " DIR_PATH

# Check if directory exists
if [ ! -d "$DIR_PATH" ]; then
  echo "Directory does not exist!"
  exit 1
fi

# Get current date
DATE=$(date +%Y-%m-%d)

# Backup file name
BACKUP_FILE="backup_$DATE.tar.gz"

# Create backup
tar -czf "$BACKUP_FILE" "$DIR_PATH"

echo "Backup created successfully: $BACKUP_FILE"
