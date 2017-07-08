#!/bin/bash
# For loop

# list of values
i=1
for day in Mon Tue Wed Thu Fri
do
echo "$(( i++ )) : $day"
done

# C-style traditional

for (( i=1; i <= 3; i++ ))
do
	echo "Your random number $i: $RANDOM"
done


# While loop

# This script prints 4 sequential numbers 0 1 2 3.

x="0"

while [ $x -lt 4 ]
do
	x=$[$x+1]
    echo $x
done


# infinite loop

#!/bin/bash

while :
do
	echo "Do something; hit [CTRL+C] to stop!"
done

# More condition on while loop

select=0

echo "1. Apple"
echo "2. Oragne"
echo "3. Lime"

echo -n "Please select [1,2 or 3] : "

# Loop while the variable 'select' is equal 0
# bash while loop

while [ $select -eq 0 ]; do
 
# read user input
read select

# bash nested if/else
if [ $select -eq 1 ] ; then
 
        echo "You have selected: Apple"

else                   

        if [ $select -eq 2 ] ; then
                 echo "You have selected: Orange"
        else
         
                if [ $seelct -eq 3 ] ; then
                        echo "You have selected: Lime"
                else
                        echo "Please select between 1-3 !"
                        echo "1. Apple"
                        echo "2. Ornage"
                        echo "3. Lime"
                        echo -n "Please select [1,2 or 3] : "
                        choice=0
                fi   
        fi
fi
done

# Unitl loop

i=0
# bash until loop
until [ $i -gt 3 ]; do
        echo "i : $i
        i=$[$i+1]
done 



num=1
	
	while [ $num -le 10 ]; do
		echo $num
		num=$((num + 1))
	done
	
	2. Continue and Break
	#!/bin/bash
	
	num=1
	
	while [ $num -le 20 ]; do
	
		# Don't print evens
		if (( ((num % 2)) == 0 )); then
 			num=$((num + 1))
 			continue
 		fi
 		
 		# Jump out of the loop with break
 		if ((num >= 15)); then
 			break
 		fi
 		
		echo $num
		num=$((num + 1))
	done
	
	3. Until loops until the loop is true
	#!/bin/bash
	
	num=1
	
	until [ $num -gt 10 ]; do
		echo $num
		num=$((num + 1))
	done
	
	4. Use read and a loop to output file info
	#!/bin/bash
  	while read avg rbis hrs; do
  	
  		# printf allows you to use \n
  		printf "Avg: ${avg}\nRBIs: ${rbis}\nHRs: ${hrs}\n"
  		
  	# Pipe data into the while loop
  	done < barry_bonds.txt
  	
  	5. There are many for loop options. Here is the C form.
  	#!/bin/bash
  	for (( i=0; i <= 10; i=i+1 )); do
  		echo $i
  	done
  	
  	6. We can cycle through ranges
  	#!/bin/bash
  	for i in {A..Z}; do
  		echo $i
  	done
  	
  	
