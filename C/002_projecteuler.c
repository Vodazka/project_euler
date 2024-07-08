#include<stdio.h>

int main(){
    int limit = 4000000;
    int result = 0;
    int n1 = 1;
    int n2 = 2;
    int n3;

    while(n2 < limit) {
        if (n2 % 2 == 0) {
            result += n2;

        }
        n3 = n1 + n2;
        n1 = n2;
        n2 = n3;

    }
    printf("%d\n",result);
    return 0;

}