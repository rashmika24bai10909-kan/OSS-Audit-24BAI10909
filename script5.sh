#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Generates a personalized open-source philosophy statement

echo "Answer three questions to generate your manifesto."
echo ""

# --- User Input ---
# Takes input from user using read
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Date ---
# Gets current date in readable format
DATE=$(date '+%d %B %Y')

# --- Output file ---
# Creates filename using current username
OUTPUT="manifesto_$(whoami).txt"

# --- Compose and write manifesto ---
# Uses string concatenation and writes to file using >
echo "On $DATE, I reflect on the importance of open source." >$OUTPUT
echo "Using tools like $TOOL reminds me that technology should empower people." >>$OUTPUT
echo "To me, freedom means $FREEDOM, and it drives me to create and share." >>$OUTPUT
echo "I aspire to build $BUILD and contribute it openly for the benefit of everyone." >>$OUTPUT
echo "This is my commitment to the open-source community." >>$OUTPUT

# --- Alias Concept (example) ---
# You can create a shortcut to run this script:
# alias manifesto='./script5.sh'

# --- Output result ---
echo "Manifesto saved to $OUTPUT"
cat $OUTPUT
