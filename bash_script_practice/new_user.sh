#!/bin/bash

# check forr sudo permission
if [ "$(id -u)" -ne 0 ]; then
    echo "Permission denied, required sudo permission"
    exit 1
fi

csv_file="users.csv"

# Check if csv file is exist
if [ ! -f "$csv_file" ]; then
    echo "CSV file not found: $csv_file"
    exit 1
fi

# User creation
while IFS=, read -r username email group; do
    # Check if user is already exist
    if id "$username" &>/dev/null; then
        echo "User $username is already exist, skipping..."
    else
        # create a user
        useradd -m -s /bin/bash -c "$email" "$username"
        echo "User $username created successfully."

        # create a group
        if [ -n "$group" ]; then
            usermod -aG "$group" "$username"
            echo "User $username added to the groupb$group."
        fi
    fi
done < "$csv_file"

echo "Done."
