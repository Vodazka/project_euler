#!/bin/bash

sum=0
n1=1
n2=2

while [ $n2 -le 4000000 ]; do
	if((n2%2==0)); then
		sum=$((sum+n2))
	fi

	fib=$((n1+n2))
	n1=$n2
	n2=$fib
done

echo "$sum"
