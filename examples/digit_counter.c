#include <stdio.h>

int main() 
{
    int numeric_chars[10]; 
    int others, white_spaces; 
    others = white_spaces = 0;
    for ( int i = 0; i < 10; i++) 
    {
        numeric_chars[i] = 0; 
    }

    puts("---------------------------------------------------");
    puts("Ctrl+D (UNIX) and Ctrl+Z (DOS) to Quit/Get-Results!");
    puts("---------------------------------------------------");
    
    for ( char c = 0; (c = getchar()) != EOF;) 
    {
        if ( c >= '0' && c <= '9' )
            ++numeric_chars[c-'0']; 
        else if ( c == ' ' || c == '\t' || c == '\n' )
            ++white_spaces; 
        else 
            ++others;
    }
    
    puts("===================================================");
    for ( int i = 0; i < 10; i++ )
        printf("Numeric-character: %d --> %d \n", i, numeric_chars[i]); 
    puts("===================================================");
    printf("Whitespaces (\\t, \\n and ' ') --> %d \n", white_spaces); 
    puts("---------------------------------------------------");
    printf("Others ( Alphabets and symbols ) --> %d \n", others);
    puts("===================================================");
    
    return 0;
}

// Notes about this under ../doc/character-arithmetic.md
