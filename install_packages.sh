#!/bin/bash

PACKAGE_FILE="packages.txt"
LOG_FILE="install.log"

# Clear old log file
> "$LOG_FILE"

# Check if package list exists
if [ ! -f "$PACKAGE_FILE" ]; then
  echo "Package list not found!" | tee -a "$LOG_FILE"
  exit 1
fi

# Update package list
echo "Updating package repository..." | tee -a "$LOG_FILE"
sudo apt update -y >> "$LOG_FILE" 2>&1

# Read packages one by one
while IFS= read -r package; do
  # Skip empty lines
  [[ -z "$package" ]] && continue

  echo "Installing $package..." | tee -a "$LOG_FILE"

  if sudo apt install -y "$package" >> "$LOG_FILE" 2>&1; then
    echo "$package installed successfully." | tee -a "$LOG_FILE"
  else
    echo "Failed to install $package." | tee -a "$LOG_FILE"
  fi

done < "$PACKAGE_FILE"

echo "Installation process completed." | tee -a "$LOG_FILE"
