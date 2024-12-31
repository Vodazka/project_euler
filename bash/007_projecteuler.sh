#!/bin/bash

is_prime() {
	if ! (( num > 1 )); then
		return 1
	fi

	if (( num == 2 )); then
		return 0
	fi

	if ! (( num % 2 )); then
		return 1
	fi

	for (( i=3; i*i <=num; i+=2 )); do
		if ! (( num % i ));then
			return 1
		fi
	done

	return 0
}

find_prime() {
	local n=$1
	local count=0
	local num=1

	while ((count < n)); do
		((num++))
		is_prime num
		
		if(($? == 0)); then
			((count++))
		fi
	done

	echo $num
}

result=$(find_prime 1001)

echo $result
