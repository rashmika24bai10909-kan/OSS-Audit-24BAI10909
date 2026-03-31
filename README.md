# Open Source Software Lab Assignment

## Student Details

* **Name:** Rashmika Kancha
* **Roll Number:** 24BAI10909
* **Chosen Software:** Git

---

## Overview

This assignment consists of five Bash scripts that demonstrate key Linux and open-source concepts such as system inspection, package management, file analysis, automation, and user interaction.

---

## Script Descriptions

### **Script 1: System Identity Report**

* Displays system-level information including:

  * Linux distribution
  * Kernel version
  * Username and home directory
  * System uptime and current date/time
* Provides a brief note about the GNU General Public License (GPL)

---

### **Script 2: FOSS Package Inspector**

* Checks whether **Git** is installed on the system
* Displays:

  * Version
  * License
  * Summary
* Uses a case statement to describe Git’s purpose

---

### **Script 3: Disk and Permission Auditor**

* Iterates through important system directories:

  * `/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`
* Displays:

  * Directory size
  * Permissions
  * Owner and group
* Checks for the existence of Git configuration file (`~/.gitconfig`)

---

### **Script 4: Log File Analyzer**

* Reads a log file line by line
* Counts occurrences of a keyword (default: `error`)
* Displays:

  * Total count
  * Last 5 matching lines
* Includes retry logic if the file is empty

---

### **Script 5: Open Source Manifesto Generator**

* Takes user input interactively:

  * Tool used
  * Meaning of freedom
  * Something to build and share
* Generates a personalized manifesto
* Saves output to a `.txt` file

---

## How to Run the Scripts

### **Step 1: Give Execute Permission**

```bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
```

---

### **Step 2: Run Each Script**

#### Script 1

```bash
./script1.sh
```

#### Script 2

```bash
./script2.sh
```

#### Script 3

```bash
./script3.sh
```

#### Script 4

```bash
./script4.sh /path/to/logfile error
```

Example:

```bash
./script4.sh /var/log/syslog error
```

#### Script 5

```bash
./script5.sh
```

---

## Dependencies

Ensure the following tools are installed on your Linux system:

* **Bash** (default shell)
* **coreutils** (for commands like `ls`, `du`, `cut`)
* **grep**
* **awk**
* **rpm** (for Script 2, Fedora/RHEL-based systems)

Optional (for full compatibility):

* `dpkg` (for Debian-based systems, if adapting script)

---

## Notes

* Scripts are designed for Linux environments.
* Script 2 uses `rpm`, so it works best on Fedora/RHEL systems.
* Script 4 requires a valid log file path.
* Script 5 requires user interaction unless automated.

---

## Conclusion

These scripts collectively demonstrate practical usage of shell scripting concepts such as loops, conditionals, file handling, command-line arguments, and automation in an open-source environment.
