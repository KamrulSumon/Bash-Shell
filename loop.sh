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
