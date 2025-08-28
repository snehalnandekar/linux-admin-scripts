#!/bin/bash
# Backup Automation Script
# Author: Snehal
# Description: Creates timestamped backups of /etc/passwd and /etc/shadow

# Backup directory
BACKUP_DIR="/backup"

# Create backup directory if it doesn't exist
mkdir -p $BACKUP_DIR

# Timestamp
DATE=$(date +%Y%m%d_%H%M%S)

# Files to backup
FILES=("/etc/passwd" "/etc/shadow")

# Loop through files and create backups
for FILE in "${FILES[@]}"; do
    if [ -f "$FILE" ]; then
        BASENAME=$(basename $FILE)
        cp $FILE $BACKUP_DIR/${BASENAME}_${DATE}
        echo "[✔] Backup of $FILE created at $BACKUP_DIR/${BASENAME}_${DATE}"
    else
        echo "[✘] File $FILE not found, skipping..."
    fi
done
