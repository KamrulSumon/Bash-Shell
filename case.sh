#!/bin/bash
echo "What is your scripting language? (0 = EXIT)"
echo "1) bash"
echo "2) perl"
echo "3) phyton"
echo "4) None of the above !"
read case;

case $case in
    1) echo "You've selected bash!";;
    2) echo "You've selected perl!";;
    3) echo "You've selected phyton!";;
    0) exit
esac 


read -p "How old are you : " age
	
	# Check the value of age
	case $age in
	
	# Match numbers 0 - 4
	[0-4]) 
		echo "To young for school"
		;; # Stop checking further
		
	# Match only 5
	5)
		echo "Go to kindergarten"
		;;
		
	# Check 6 - 18
	[6-9]|1[0-8])
		grade=$((age-5))
		echo "Go to grade $grade"
		;;
		
	# Default action
	*)
		echo "You are to old for school"
		;;
	esac # End case
	
	8. Ternary Operator performs different actions based on a condition
	#!/bin/bash
	can_vote=0
	age=18
	
	((age>=18?(can_vote=1):(can_vote=0)))
	echo "Can Vote : $can_vote"
