#!/bin/bash

#Arithmatic operation
# using expr
i=1
i=`expr $i + 1`
echo $i

#using (())
i=1
$(( i1+1 ))
echo $i

#using let
let i=3+5
echo "3 + 5 =" $i

echo $(( 10 + 1 ))
echo $(( 11 - 1 ))
echo $(( 10 / 2 ))
echo $(( 10 * 5 ))
echo $(( 10 % 3 ))
x=5;echo $(( x++ ));echo $(( x++ ))
x=5; echo $(( x-- ))
x=3;y=3;echo $(( x ** y ))


x=1
y=2
declare -i n
n=$x+$y
echo "Result is:$n "

# bash convert binary number input x
n=2 # $x
echo $n

# bash convert octal number input x
n=8 # $x
echo $n

# bash convert hex number input x
result=16 # $x
echo $n

# Floating point calculation
$ x = 1.1 
$ y = 2.2 
$ echo x + y | bc -l
3.3

$ echo x - y | bc -l
-1.1

$ echo x \* y | bc -l
2.42   

$ echo 'x * y' | bc -l
2.42    

$ echo 'x / y' | bc -l
.5000

$ z=`echo '$x / $y' | bc -l`
$ echo $z
.5000

# Wrong use

$ echo x * y | bc -l
1.1  
