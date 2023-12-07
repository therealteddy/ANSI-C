/*
    Author: Ted Josh Issac Jerin
    Date: 04-Dec-23
*/

#include <stdio.h> 

/* Return the first position in s[] where any character in t[] appears */
int any(char s[], char t[]); 

int main(int argc, char* argv[]) {
    char* s = "Hello World!\n"; 
    char* true_str = "\n"; 
    char* false_str = "z"; 
    int true_position = any(s, true_str); 
    int false_position = any(s, false_str); 
    printf("1. %d\n", true_position); 
    printf("2. %d\n", false_position);
    return 0; 
}

int any(char s[], char t[]) {
    int i, j; 
    i = j = 0; 

    while (t[i] != '\0') {
        while (s[j] != '\0') {
            if (s[j] == t[i]) return j; 
            else ++j; 
        }
        j = 0; 
        ++i;
    }

    return -1;
}