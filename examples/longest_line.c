#include <stdio.h> 

#define MAXSIZE 1024

int getl(char string[], int max_string_size); 
void copy(char from[], char to[]);

int main () 
{
    char longest_line[MAXSIZE];
    char line[MAXSIZE];
    int line_size =0; 
    int longest_line_size = 0; 

    puts("====================================================================");
    puts("Ctrl+D (UNIX) or Ctrl+Z (DOS) to Quit and Get-Results!");
    puts("====================================================================");

    while ( ( line_size = getl ( line, MAXSIZE )) > 0)
    {
        if ( line_size > longest_line_size ) { 
            longest_line_size = line_size; 
            copy(line, longest_line);
        }
    }
    
    if ( longest_line_size > 0 )
    {
        puts("---------------------------------------------------------------------");
        printf( "The longest line was: %sThe sizeof the longest line was %d bytes \n", longest_line, longest_line_size) ;
        puts("---------------------------------------------------------------------");
    }

    return 0; 
}

int getl (char s[], int str_size)
{
    int c, i;
    i = 0; 

    while ( i < str_size-1 && (c = getchar() ) != EOF && c != '\n' )
    {
        s[i] = c; 
        ++i;
    }
    if ( c == '\n' ) {
        s[i] = c; 
        ++i; 
    }
    s[i] = '\0'; 

    return i;
}

void copy ( char from[], char to[] ) 
{
    int i = 0; 
    while ( from[i] != '\0' ) {
        to[i] = from[i]; 
        ++i;
    }
}

