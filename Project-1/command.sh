#!/bin/bash

# print first few lines
head  unirank.csv 
head  unirank.csv | csvlook

# print first 25 lines 
head -n 25 unirank.csv | csvlook

# search college in file
grep -i "college" unirank.csv | csvlook

# total number of line in file
wc -l unirank.csv

# count line number that has word “college”
grep -i "college" unirank.csv | wc -l

# people from CA
grep "CA" unirank.csv | csvlook

#number of Institutes from each state
cat unirank.csv | cut -f1,3 -d, | csvlook
cat unirank.csv | cut -f1,3 -d, | sort -k 2 -t"," |csvlook
cat unirank.csv | cut -f1,3 -d, | csvlook
cat unirank.csv | cut -f3 -d, | sort | uniq -c | csvlook

#output redirect
cat unirank.csv | cut -f4,6 -d, > udata.csv

# floating point calculation
bc -l <<< "7/232*100"
