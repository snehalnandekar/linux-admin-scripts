# linux-admin-scripts
Shell script to automate user and group management tasks in Linux systems.
# Backup Automation Script

A simple shell script to create timestamped backups of critical Linux configuration files (`/etc/passwd` and `/etc/shadow`).  

## Features
- Automatically saves backups with timestamps  
- Stores backups in `/backup` directory  
- Lightweight and easy to use  
- Useful for Linux administrators preparing for **RHCSA** or managing production servers  

## Usage

1. Clone the repo:
   ```bash
   git clone https://github.com/snehalnandekar/backup-automation.git
   cd backup-automation
