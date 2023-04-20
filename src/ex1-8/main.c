#include <stdio.h> 

char c = 0; 
unsigned long int cc = 0; 
unsigned long int cb = 0; 
unsigned long int ct = 0; 
unsigned long int cn = 0; 

int main () 
{
    puts("-----------------------------------------------------------------------------");
    puts("Ctrl+D (UNIX) or Ctrl+Z (DOS) for EOF signal!");
    puts("-----------------------------------------------------------------------------");
    
    c = getchar(); 
    while ( c != EOF ) 
    {
        ++cc; 
        if ( c == ' ') 
            ++cb; 
        if ( c == '\n') 
            ++cn; 
        if ( c == '\t') 
            ++ct; 
        
        c = getchar();
     }
    
    putchar(0x0A);
    puts("-----------------------------------------------------------------------------");
    printf(" Characters->%lu\n Blanks->%lu\n Tabs->%lu\n Newline->%lu\n", cc, cb, ct, cn);
    puts("-----------------------------------------------------------------------------");

    return 0; 
}
