#!/bin/bash
# Script 2: FOSS Package Inspector
# Checks if Git is installed, shows version info, and prints a short description

# --- Variable ---
# Define the package name
PACKAGE="git"

# --- Check if package is installed ---
# Uses rpm -q to check installation
if rpm -q $PACKAGE &>/dev/null; then
  echo "$PACKAGE is installed."

  # --- Display package details ---
  # Extract Version, License, and Summary using grep
  rpm -qi $PACKAGE | grep -E 'Version|License|Summary'
else
  echo "$PACKAGE is NOT installed."
fi

# --- Case statement ---
# Prints a short description of Git
case $PACKAGE in
git)
  echo "Git: a distributed version control system used to track changes in code."
  ;;
esac
