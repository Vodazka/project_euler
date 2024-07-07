#include<stdio.h>

int main (){
    int result = 0;
    int n;

    for (n = 1; n <= 1000; n++) {
        if ( n % 3 == 0 || n % 5 == 0){
            result += n;
        }
    }

    printf("%d\n", result);

    return 0;
}