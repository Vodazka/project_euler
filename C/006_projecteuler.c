#include <stdio.h>

int main() {
    int sum_of_square = 0;
    int square_of_sum = 0;
    int difference = 0;

    // Sum of squares
    for (int i = 1; i <= 100; i++) {
        sum_of_square += i * i;
    }

    // Square of sum
    for (int i = 1; i <= 100; i++) {
        square_of_sum += i;
    }

    square_of_sum = square_of_sum * square_of_sum;

    difference = square_of_sum - sum_of_square;

    printf("%d\n", difference);

    return 0;
}