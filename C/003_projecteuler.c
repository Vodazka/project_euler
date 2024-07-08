#include <stdio.h>

int main() {

    long n = 600851475143;
    long i = 2;

    while(i * i < n) {
        while(n % i == 0) {
            n = n / i;
        }
        i = i + 1;

    }
    printf("%ld\n", n);

}