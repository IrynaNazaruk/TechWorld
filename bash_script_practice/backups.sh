#!/bin/bash

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "Please run this script as root or with sudo."
    exit 1
fi

# backup directory
backup_dir="/var/backups"

# files and dirrectory which need to be backuped
files_to_backup=(
    "/first/important/file.txt"
    "/second/important/file.txt"
    "/important/directory/"
)

# Function to performbackup
perform_backup() {
    # Dirrectory creating for backups
    backup_timestamp=$(date +"%Y%m%d%H%M%S")
    current_backup_dir="$backup_dir/backup_$backup_timestamp"
    mkdir -p "$current_backup_dir"

    #rsync backup execution
    rsync -av "${files_to_backup[@]}" "$current_backup_dir/"

    # result
    echo "Backup is done. Check in $current_backup_dir"
}


perform_backup

# crontab to execute this in daily basic: 45 0 * * * /path/to/script.sh