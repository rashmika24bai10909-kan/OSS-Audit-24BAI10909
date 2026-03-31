#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./log_analyzer.sh /var/log/messages

# --- Input arguments ---
LOGFILE=$1
KEYWORD=${2:-"error"} # Default keyword is 'error'
COUNT=0

# --- Check if file exists ---
if [ ! -f "$LOGFILE" ]; then
  echo "Error: File $LOGFILE not found."
  exit 1
fi

# --- Do-while style retry if file is empty ---
# Keeps asking until file is not empty
while [ ! -s "$LOGFILE" ]; do
  echo "File is empty. Enter another file:"
  read LOGFILE

  if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found."
    exit 1
  fi
done

# --- Read file line by line ---
# Uses while-read loop and if condition
while IFS= read -r LINE; do
  if echo "$LINE" | grep -iq "$KEYWORD"; then
    COUNT=$((COUNT + 1))
  fi
done <"$LOGFILE"

# --- Output result ---
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# --- Show last 5 matching lines ---
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
