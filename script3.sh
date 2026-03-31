#!/bin/bash
# Script 3: Disk and Permission Auditor
# Reports size, permissions, and ownership of key directories

# --- Directory List ---
# List of important system directories
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# --- Loop through directories ---
# Uses for loop to process each directory
for DIR in "${DIRS[@]}"; do
  # Check if directory exists
  if [ -d "$DIR" ]; then

    # --- Get permissions, owner, group ---
    # ls -ld gives directory details, awk extracts required fields
    PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')

    # --- Get size ---
    # du -sh gives total size in human-readable format
    SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

    # --- Display result ---
    echo "$DIR => Permissions: $PERMS | Size: $SIZE"

  else
    echo "$DIR does not exist on this system"
  fi
done

echo "----------------------"

# --- Git Config Directory Check ---
# Checks if Git config directory exists and shows its permissions

GIT_CONFIG="$HOME/.gitconfig"

if [ -f "$GIT_CONFIG" ]; then
  PERMS=$(ls -l $GIT_CONFIG | awk '{print $1, $3, $4}')
  echo "Git Config Found: $GIT_CONFIG"
  echo "Permissions: $PERMS"
else
  echo "Git Config file does not exist"
fi
