#include <stdio.h> 

#define IN 1 
#define OUT 0 

int c, state, words; 

int main() 
{
    c = state = words = 0;
    puts("Ctrl+D (UNIX) or Ctrl+Z for an EOF signal!");
    c = getchar();
   
    while ( c != EOF )
    {
       if ( c == ' ' || c == '\n' || c == '\t' )
            state = OUT; 
       else if ( state == OUT ) {
            state = IN;
            ++words; 
      }
       c = getchar();
    }
    printf("Words => %d\n", words);
}
