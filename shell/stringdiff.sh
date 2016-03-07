#!/bin/bash
set -eu

# Calculates the difference between the number of occurences 
# of two strings in a file. 
# Output: Occurences of first - Occurences of second

# First argument: The opening string
# Second arguemnt: The closing string
# Third argument: The file to analyze

#Count occurences of first argument
A="`cat $3 | grep "$1" -o | wc -l`"
#Count occurences of second argument
B="`cat $3 | grep "$2" -o | wc -l`"

SUM=$(($A-$B))
echo $SUM
