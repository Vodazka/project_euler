#include <stdio.h>
#include <string.h>

// Convert an integer to a string
void intToStr(int num, char str[]) {
    sprintf(str, "%d", num); // Formats int as a string and stores it as "str"
}

// Reverse a string
void reverseStr(char str[]) {
    int n = strlen(str); // Calculate length of str and store it in variable n
    for (int i = 0; i < n / 2; i++) { // Loop through half of the string
        char temp = str[i]; // Store i in a temporary variable "temp"
        str[i] = str[n - i - 1]; // Assign the character from the position n - i - 1
        str[n - i - 1] = temp; // Assign the temporary variable to the position n - i - 1.
    }
}

// Check if a number is a palindrome
int isPalindrome(int num) {
    char str[20]; // Converts int into a string
    intToStr(num, str); // ---
    
    char revStr[20];  // Copies string to another string
    strcpy(revStr, str); // Reverses the copied string
    reverseStr(revStr); // Cpmpares the original string and the reversed string
    
    return strcmp(str, revStr) == 0; // If both are equal then the number is a palindrome
}

int main() {
    int palindrome = 0;

    for (int n1 = 100; n1 < 1000; n1++) {
        for (int n2 = 100; n2 < 1000; n2++) {
            int result = n1 * n2;

            if (isPalindrome(result)) {  // Checks if the product is a polindrome
                if (result > palindrome) {
                    palindrome = result;
                }
            }
        }
    }

    printf("%d\n", palindrome);
    return 0;
}