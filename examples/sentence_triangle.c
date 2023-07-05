#include <stdio.h> 

#ifndef MAXLINE 
    #define MAXLINE 1024 
#else 
    #warning MAXLINE previously defined! 
#endif 

/* Get a line from stdin */ 
int  get_line ( char line[] ); 

/* Draw an ASCII pyramid */ 
void pyramid  ( int base_size, char line[] ); 

int main() 
{
    char line[MAXLINE]; 
    int l = get_line(line);
    pyramid(l, line); /* l-2 because we don't want to include newline character or the first character from input! */  
}

int get_line( char line[] )
{
    int c, i; 

    for ( i = 0; 
        ( c = getchar() ) != EOF && c != '\n' && i < MAXLINE-1 
        ; ++i ) { line[i] = c; }
          ++i ;   line[i]='\0' ; 
    return i-1;
}

void pyramid ( int bs, char* line ) 
{
    int j; 
    for ( j = 0; j < bs; ++j ) 
    {
        for ( int i = 0; i < bs-j; ++i ) 
        {
            putchar(line[i]); 
        }
        putchar(0XA);
    } 
}
