#!/bin/bash

#1.File and Directory Operations: Create a Bash script that performs the following operations on a specified directory:

# - Lists all files and subdirectories in the directory.
# - Calculates and displays the total size of all files in the directory.
# - Renames all files in the directory by adding a timestamp to the beginning of each filename.
# - Moves all files with a specific file extension (e.g., .txt) to a subdirectory named "backup."

echo "Lets get started..."
current=$(pwd)

echo "Listing everything inside current directory $current"
first=$(ls -a)
echo " Here's the result: $first "

second=$(du -ah)
echo "Total size of all: $second "

echo "Lets rename all files inside $current using timestamp..."
timestamp=$(date +"%Y%m%d%H%M%S")
if [ - f "$first" ]; then
  for file in $first; do
    mv "$file" "$timestamp$file"
  done
  result=$(ls -la)
  echo "Here's a final result: $result"
else 
  echo "No files inside directory, nothing can be done"
fi

to_move=$(ls -a | grep txt)
echo "Lets move all txt files to the specific directory..."

if [ -n "$to_move" ]; then
  mkdir -p $timestamp || mv $to_move $timestamp
  echo "Done."
else 
  echo "No files to move."
fi


#2. Text File Manipulation: Write a Bash script that takes a text file as input and performs the following tasks:

# - Counts the number of lines in the file.
# - Counts the number of words in the file.
# - Reverses the order of lines in the file and saves it as a new file.
# - Searches for a user-specified word in the file and replaces it with another word throughout the entire file.

echo "Text File Manipulation"
read -p "Please enter the .txt file which need to be proceed: " filename

echo "Lets count the number of lines in the specified file..."
if [ -e "$filename" ]; then 
  line_count=$(wc -l)
  echo "The number of lines are: $line_count."
else 
  echo "File $filename doesnt exist, please check for spelling mistakes and run script again"
  return 1
fi

echo "Lets count the number of words inside file $filename..."
word_count=$(wc -w < "$filename" )
echo "Result is $word_count."

echo "Lets play with line order..."
if [ "$linecount" -gt 2 ]; then
  tac "$filename" > reversed_file.txt
  echo "Please check reversed_file.txt "
else 
  echo "Nothing to mix, its just 1 line."
fi

read -p "Please specify the word which needs to be replaced: " replace 
read -p "Please specify the word which needs to be placed instead: " instead

echo "Working on it..."
if grep -q "$replace" "$filename" ; then
  sed -i 's/$replace/$instead/g'
  echo "Please check the $filename for replacement."
else 
  echo "Cant find $replace in $filename. Pleas check for typo."
fi

#3. System Monitoring: Create a Bash script that monitors system resources (e.g., CPU usage, memory usage) and logs the information to a text file at regular intervals (e.g., every minute). 
# You can use commands like top, free, and df to gather system information.


#5. Password Generator: Develop a Bash script that generates random passwords of varying lengths. 
# Allow users to specify the length and complexity of the passwords (e.g., uppercase letters, lowercase letters, numbers, special characters). 
# The script should display the generated password to the user.


#7. Website Uptime Checker: Write a Bash script that periodically checks the uptime status of a list of websites and sends an email notification if any of the websites are down. 
# You can use tools like curl to make HTTP requests and mail or sendmail for email notifications.


#8 User Account Management: Develop a Bash script that simplifies user account management tasks, such as creating, modifying, or deleting user accounts. 
# Make sure the script checks for the existence of user accounts and provides appropriate feedback.