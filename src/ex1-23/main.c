/*
 * Author: Ted Jerin
 * Exersise: 1-23 
 * Description: A Program that removes C comments
 * Date: 22-04-23 
 */ 

#include <stdio.h> 

#define MAX_LIMIT 1024 

int main () 
{
    char c, s[MAX_LIMIT]; 
    int i = 0; 

    while ( ( c = getchar() ) != EOF && i < (MAX_LIMIT - 1) )
    {
        if ( c == '/' && ( c = getchar() ) == '*' )
            while ( ( c = getchar() ) != '*' && ( c  = getchar() ) != '/' )
                break;
        else 
            s[i] = c; ++i;
    }

    s[i] = '\0';
    printf("%s", s);

    return 0;
}
