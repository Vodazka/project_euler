#include <stdio.h>

int main() {
    int a,b,c;
    int product;

   for (a = 1; a < 1000 / 3; a++) { // A is smaller than both b and c // 1000 / 3 = 333
    for (b = a + 1; b < 1000 / 2; b++) { // b is allways > than a // 1000 / 2 = 500
        c = 1000 - a - b; // Calculate to satisfy the sum condition a + b + c = 1000

        if ( a * a + b * b == c * c) { // Check for Pythagorean triplet
            product = a * b * c;

            printf("%d\n", product);
            return 0;
        }
    }
   }
}