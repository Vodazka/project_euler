#include <stdio.h>
#include <stdbool.h>
#include <math.h>

bool is_prime(int num) {
    for (int i = 2; i <= sqrt(num); i++) {
        if (num % i == 0) {
            return false;
        }
    }
    return true;
}

int main() {
    long sum_of_primes = 0;
    long limit = 2000000;

    for (int n = 2; n < limit; n++) {
        if (is_prime(n)) {
            sum_of_primes += n;
        }
    }

    printf("%ld\n", sum_of_primes);
    return 0;
}
