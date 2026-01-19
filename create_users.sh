#!/bin/bash

USER_FILE="user_list.txt"
CRED_FILE="credentials.txt"

> "$CRED_FILE"

if [[ ! -f "$USER_FILE" ]]; then
  echo "User list file not found!"
  exit 1
fi

while IFS= read -r username; do
  [[ -z "$username" ]] && continue

  if id "$username" &>/dev/null; then
    echo "User $username already exists. Skipping..."
    continue
  fi

  password=$(openssl rand -base64 12)

  useradd -m "$username"
  echo "$username:$password" | chpasswd

  echo "$username:$password" >> "$CRED_FILE"
  echo "User $username created."

done < "$USER_FILE"

echo "Finished. Credentials saved in $CRED_FILE"
