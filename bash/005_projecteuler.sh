#!/bin/bash

gcd() { # greatest common divisor (using eucledian algorithm)
	#Given two numbers a and b, where a>b
    local a=$1
    local b=$2
	#Replace a with b and b with a mod b
	#Repeat this process until b becomes 0
    while [ $b -ne 0 ]; do
        local temp=$b
        b=$((a % b))
        a=$temp
    done
    echo $a
}

lcm() { #least common multiple 
	local a=$1
    local b=$2
    echo $((a * b / $(gcd $a $b)))
}

result=1

for ((i=1; i<=20; i++)); do
    result=$(lcm $result $i)
done

echo "$result" 

