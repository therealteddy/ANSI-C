#include <stdio.h> 

#ifndef MAX_LINE 
    #define MAX_LINE 1024 
#else 
    #warning MAX_LINE has been defined previously 
#endif

/* Replace all c in s[] with ' ' */ 
void squeeze ( char c, char s[] ); 

/* Replace all characters of s[] that match with the characters of t[] with ' ' */
void strsqz ( char s[], char t[] ); 

int main() 
{
    /* squeeze() example */ 
    char s[MAX_LINE] = "ttetd"; 
    squeeze('t', s);
    puts(s); 
    
    /* strsqz() example */ 
    char s1[MAX_LINE] = "abcdefghijklmnopqrstuvwxyz"; 
    char s2[MAX_LINE] = "ted"; 
    strsqz(s1, s2); 
    puts(s1);
    return 0;

}

void squeeze ( char c, char s[] ) 
{
    int i = 0;
    while ( s[i] != '\0' ) {
        if ( s[i] == c ) s[i++] = ' '; 
        else i++;
    }
    return;
}

void strsqz ( char s[], char t[] ) 
{
    int i, j; j = 0; 
    for ( i = 0; t[i] != '\0'; ++i ) {
        while (  s[j] != '\0' ) {
            if ( s[j] == t[i] ) s[j++] = ' '; 
            else j++; 
        }
        j = 0; // reset the counter
    }
}
