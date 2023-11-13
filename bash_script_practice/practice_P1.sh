#!/bin/bash

#1. Hello World: Create a Bash script that simply prints "Hello, World!" to the terminal.

echo "Hello World, this is my first script"

#2. User Greeting: Write a script that asks the user for their name and then prints a greeting using that name.

read -p "Please enter your name: " user
echo "Hi there $user! It's a pleasure to meet you"

#3. Arithmetic Operations: Create a script that takes two numbers as input and performs basic arithmetic operations (addition, subtraction, multiplication, division) on them.
# Prompt the user for input
read -p "Please enter a first number: " num1
read -p "Please enter a second number: " num2
read -p "Please enter the operation (+, -, *, /): " operation

# Check the operation and perform the calculation
case $operation in
    "+")
        result=$(($num1 + $num2))
        ;;
    "-")
        result=$(($num1 - $num2))
        ;;
    "*")
        result=$(($num1 * $num2))
        ;;
    "/")
        # Check if num2 is not zero to avoid division by zero
        if [ $num2 -eq 0 ]; then
            echo "Division by zero is not allowed."
            exit 1
        fi
        result=$(($num1 / $num2))
        ;;
    *)
        echo "Not a valid operation, please try again with a valid one."
        exit 1
        ;;
esac

# Display the result
echo "The result is $result"

#4. Even or Odd: Write a script that checks if a number entered by the user is even or odd and prints an appropriate message.
read -p "Please enter a number: " number

if [ $((number%2)) -eq 0 ];
then
  echo "Number is even."
else
  echo "Number is odd."
fi

#5. Simple Loop: Create a script that uses a loop to print numbers from 1 to 10.

for ((i=1; i<=10; i++))
do 
  echo "Number is: " $i
done

#6. File Existence Check: Write a script that checks if a specific file exists in the current directory and prints a message indicating its existence.

read -p "Please enter which file we need to check:" file

if [ -f "$file" ]; then
  echo "File exists."
else
  echo "File does not exist."
fi

#7. String Length: Develop a script that takes a user input string and prints its length.

read -p "Please enter your string: " string
len=$(echo -n "$string" | wc -c)
if [ $len -gt 0 ]
then
  echo "String lenght is $len"
else
  echo "The string is empty. Please enter the valid sring..."
fi

#8. Array Introduction: Create a script that defines an array of your favorite colors and prints them one by one.

read -p "Please enter your favorite colors: " color

# Set the IFS to a comma (,) to split the input into an array
IFS=',' read -ra items <<< "$color"

# Loop through the array and print each item
for item in "${items[@]}"; do
  echo "Your favorite color is: $item"
done

#9. Function Basics: Write a simple function that prints a greeting message, and then call that function from your script.

function user_gretating() {
  read -p "Please enter your name: " name
  echo "Welcome on club, $name"
  }

user_gretating

#10. Command Line Arguments: Develop a script that takes a user's name as a command line argument and prints a greeting using that name.

name=$1
surname=$2

echo "Hi $1 $2! Nice to meet you"

#11. Environment Variables: Explore and print the values of environment variables like HOME, PATH, and USER in your script.

echo "Your home env is $HOME."
echo "Your path env is $PATH."
echo "Your user env is $USER."

#12. File Copy: Create a script that copies a file from one location to another.
#this script require user input
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <source_file_or_directory> <destination_directory>"
  exit 1
fi

file="$1"
dest="$2"

echo "Checking $1... "
if [ -f "$file" ];
then 
  echo "Copying file $file to the destination $dest..."
  cp "$file" "$dest"
elif [ -d "$file" ];
then 
  echo "Copying dir $file to the destination $dest..."
  cp -R "$file" "$dest"
else 
  echo "File $file doesnt exist. Please check for spelling mistake"
fi

echo "Done."

#13. String Concatenation: Write a script that takes two strings as input and concatenates them, then prints the result.
read -p "Please enter the first string: " first
read -p "Please enter the second string: " second

result=$first
echo "Working on concatenate..."
result="$first $second"
echo "the result is: $result"


#14. Basic Conditional: Develop a script that checks if a number is greater than 10 and prints a message accordingly.
read -p "Please enter the number: " numb
if [ "$numb" -gt 10 ];
then
  echo "Your number $numb greater then 10!"
elif [ "$numb" -eq 10 ];
then
  echo "Your number $numb is equel to 10"
else
  echo "Your  number $numb less then 10!"
fi

#15. User Input Validation: Create a script that asks the user for their age and ensures that it's a valid number.

read -p "Please enter your age: " age

if [[ "$age" =~ ^[0-9]+$ ]];
then
  echo "Your age is $age."
else
  echo "Enter a valid value!"
fi