#!/bin/bash

total=${1}
if [ $total -eq 1 ]; then
	echo "the number is equal to 1"
else
	echo "the number is NOT equal to 1"
fi



total=5
if [ $total -eq 1 ]; then
	echo "the number is equal to 1"
elif [ $total -eq 5 ]; then
	echo "the number is equal to 5"
        echo "Just another statement"
else
       echo "Shouldn't come here"
fi


directory=$1

# bash check if directory exists
if [ -d $directory ]; then
	echo "Directory exists!"
else 
	echo "Directory does not exists!"
fi 

read -p "What is your name? " name
  	echo "Hello $name"
  
  	read -p "How old are you? " age
  
  	# You place your condition with in []
  	# Include a space after [ and before ]
  	# Integer Comparisons: eq, ne, le, lt, ge, gt
  	if [ $age -ge 16 ]
  	then
  	echo "You can drive"
  
  	# Check another condition
  	elif [ $age -eq 15 ]
  	then
  	echo "You can drive next year"
  
  	# Executed by default
else
  echo "You can't drive"
  
# Closes the if statement
fi
2. Extended integer test
#!/bin/bash
read -p "Enter a number : " num
if ((num == 10)); then
echo "Your number equals 10"
fi
if ((num > 10)); then
echo "It is greater then 10"
else
echo "It is less then 10"
fi
if (( ((num % 2)) == 0 )); then
echo " It is even"
fi
# You can use logical operators like &&, || and !
if (( ((num > 0)) && ((num < 11)) )); then
echo "$num is between 1 and 10"
fi
# && and || can be used as control structures
# Create a file and then if that worked open it in Vim
touch samp_file && vim samp_file
# If samp_dir doesn't exist make it
[ -d samp_dir ] || mkdir samp_dir
# Delete file rm samp_file
# Delete directory rmdir samp_dir
 
3. Testing strings
#!/bin/bash
str1=""
str2="Sad"
str3="Happy"
# Test if a string is null
if [ "$str1" ]; then
echo "$str1 is not null"
fi
if [ -z "$str1" ]; then
echo "str1 has no value"
fi
# Check for equality
if [ "$str2" == "$str3" ]; then
echo "$str2 equals $str3"
elif [ "$str2" != "$str3" ]; then
echo "$str2 is not equal to $str3"
fi
if [ "$str2" > "$str3" ]; then
echo "$str2 is greater then $str3"
elif [ "$str2" < "$str3" ]; then
echo "$str2 is less then $str3"
fi



With extended test [[ ]] you can use Regular Expressions
	#!/bin/bash
	
	read -p "Validate Date : " date
	
	pat="^[0-9]{8}$"
	
	if [[ $date =~ $pat ]]; then
		echo "$date is valid"
	else
		echo "$date is not valid"
	fi
	
	5. # Read multiple values
	#!/bin/bash
	
	read -p "Enter 2 Numbers to Sum : " num1 num2
	
	sum=$((num1+num2))
	
	echo "$num1 + $num2 = $sum"
	
	# Hide the input with the s code
	read -sp "Enter the Secret Code" secret
	
	if [ "$secret" == "password" ]; then
		echo "Enter"
	else
		echo "Wrong Password"
	fi
	
	6. You can set what separates the values with IFS
	#!/bin/bash
	
	# Store the original value of IFS
	OIFS="$IFS"
	
	# Set what separates the input values
	IFS=","
	
	read -p "Enter 2 numbers to add separated by a comma" num1 num2
	
	# Use the parameter expansion ${} to substitute any whitespace
	# with nothing
	num1=${num1//[[:blank:]]/}
	num2=${num2//[[:blank:]]/}
 
	sum=$((num1+num2))
	
	echo "$num1 + $num2 = $sum"
	
	# Reset IFS to the original value
	IFS="$OIFS"
	
	# Parameter expansion allows you to do this
	name="Derek"
	echo "${name}'s Toy"
	
	# The search and replace allows this
	samp_string="The dog climbed the tree"
	echo "${samp_string//dog/cat}"
	
	# You can assign a default value if it doesn't exist
	echo "I am ${name:-Derek}"
	
	# This uses the default if it doesn't exist and assigns the value
	# to the variable
	echo "I am ${name:=Derek}"
	echo $name
