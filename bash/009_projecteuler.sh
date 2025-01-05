#!/bin/bash

product=0

for ((a=1; a<1000/3; a++)); do
	for ((b=a+1; b<1000/2; b++)); do
		c=$((1000-a-b))

		if ((a*a+b*b==c*c)); then
			product=$((a*b*c))
			echo $product
			exit 0
		fi
	done
done
