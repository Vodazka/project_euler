#!/bin/bash

n=600851475143
i=2

while ((i * i < n)); do
    while ((n % i == 0)); do
        n=$((n / i))
    done
    i=$((i + 1))
done

echo "$n"

