#!/bin/bash

is_palindrome() {
	local num="$1"
	local rev_num=$(echo "$num" | rev)

	[[ "$num" == "$rev_num" ]]
}

largest_palindrome=0

for ((i=999; i>=100; i--)); do
	for ((j=999; j>=i; j--)); do
		product=$((i * j))
		if (( product <= largest_palindrome )); then
			break
		fi
		if is_palindrome "$product"; then
			largest_palindrome=$product
		fi
	done
done

echo "$largest_palindrome"
