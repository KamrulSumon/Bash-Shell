#!/bin/bash

x="global value"

function bashfunction {
 local x="local value"
 echo $x
}

echo $x

#call the bashfunction
bashfunction

echo $x

#single quote

VAR="Hello Big Data!"
 
 echo $VAR
 
 echo '$VAR  "$VAR"' 

#double quote

VAR="Hello Big Data!"

# echo variable VAR
echo $VAR

echo "It's $VAR  and \"$VAR\" using backticks: `date`" 
