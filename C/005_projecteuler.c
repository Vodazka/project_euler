#include <stdio.h>

int divisible(int num) { // Check if divisible by 1 though 20
    for (int i = 1; i <= 20; i++) {
        if (num % i != 0) {
            return 0; // It is
        }
    }
    return 1; // It isn't
}

int main() {
    int num = 20; // Any number that is divisible by 20 will also be divisible by its factors

    while(!divisible(num)) { // While divisible returns false
        num += 20; // To be divisible by all numbers from 1 to 20, num must at least be a multiple of 20.
    }
    printf("%d\n", num);
}