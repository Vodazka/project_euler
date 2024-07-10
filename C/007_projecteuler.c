#include <stdio.h>
#include <stdbool.h>
#include <math.h>  // Includes sqrt

bool isprime(int num) {
    if (num <= 1) return false;
    if (num == 2) return true; // Only even prime number :D

    for (int i = 2; i <= sqrt(num); i++) {
        if (num % i == 0) {
            return false;
        }
    }
    return true;
}

int findprime(int n) { // Finds the nth prime
    int count = 0; // Primes found
    int num = 1;

    while (count < n) {
        num += 1;
        if (isprime(num)) {
            count += 1;
        }
    }
    return num;
}

int main() {
    int result = findprime(1001);
    printf("%d\n", result);
    return 0;
}