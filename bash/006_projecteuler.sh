#!/bin/bash

sum_of_square=0
square_of_sum=0
sum=0

for ((i=1; i<=100; i++)); do
	sum_of_square=$((sum_of_square + i * i))
done

for ((i=1; i<=100; i++)); do
	sum=$((sum + i))
done

square_of_sum=$((sum * sum))

difference=$((square_of_sum - sum_of_square))

echo "$difference"
