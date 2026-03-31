#!/bin/bash
# Script 1: System Identity Report
# Author: Rashmika Kancha | Course: Open Source Software

# --- Variables ---
# Stores the name of the student for display in the report
STUDENT_NAME="Rashmika Kancha"

# Stores the chosen open-source software (currently unused in output)
SOFTWARE_CHOICE="Git"

# --- System info ---
# Retrieves the current Linux kernel version
KERNEL=$(uname -r)

# Extracts the OS distribution name from /etc/os-release
DISTRO=$(grep '^PRETTY_NAME' /etc/os-release | cut -d= -f2 | tr -d '"')

# Gets the current logged-in username
USER_NAME=$(whoami)

# Gets the home directory of the current user
HOME_DIR=$HOME

# Retrieves system uptime in a human-readable format
UPTIME=$(uptime -p)

# Gets the current system date and time
CURRENT_TIME=$(date)

# --- Display ---
# Prints header section of the report
echo "========================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "========================================"

# Displays system distribution and kernel details
echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"

echo "----------------------------------------"

# Displays user-related information
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME_DIR"

echo "----------------------------------------"

# Displays system uptime and current date/time
echo "Uptime       : $UPTIME"
echo "Date & Time  : $CURRENT_TIME"

echo "----------------------------------------"

# Displays license-related information about Linux
echo "License Info : Most Linux distributions are based on the GNU General Public License (GPL), which ensures users can run, study, modify, and share the software freely."

# Prints footer line
echo "========================================"
