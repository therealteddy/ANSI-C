#include <stdio.h> 

#define MAXSIZE 1024

int  grabline   ( char s[]    ,  int  size  ); /* Gets a line from stdin             */  
void reverse    ( char str[]  ,  char rvs[] ); /* Reverses a string literal          */ 
int  scopy      ( char from[] , char to[]   ); /* Copy a string; return bytes copied */

int main() 
{
}

int grabline ( char s[], int size ) 
{
    int i, c; 
    i = 0   ; 
    while ( i < size && (c = getchar()) != EOF && c != '\n' ) 
    {
        s[i] = c; 
        ++i; 
    }
    if ( c == '\n' ) 
    {
        s[i] = c; 
        ++i; 
    } 
    s[i] = '\0';
    return i;
}

int scopy( char from[], char to[] )
{
    int i; 
    for ( i = 0; from[i] != '\0' ; ++i ) 
    {
        to[i] = from[i];
    }
    return i;
}
