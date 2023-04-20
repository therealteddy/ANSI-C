#include <stdio.h> 

#define IN_WORD 0 
#define OUT_WORD 1

int c, state; 

int main () 
{
    c = state = 0;
    puts("Ctrl+D (UNIX) or Ctrl+Z (DOS) for EOF signal!"); 
    for ( c = getchar(); c != EOF; c = getchar() )
    {
        if ( c == ' ' || c == '\n' || c == '\t' )
        {   state = OUT_WORD;
            c = getchar();
            putchar(0xA); 
        }
        putchar( (char) c );
    }

    return 0; 
}
