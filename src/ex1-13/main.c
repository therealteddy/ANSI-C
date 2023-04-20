#include <stdio.h> 

void print_tacs(int n); 

int main() 
{
    puts("======================================");
    puts("Ctrl+D (UNIX) or Ctrl+Z (DOS) To Quit!");
    puts("======================================");
    for ( int c = 0; (c = getchar()) != EOF; )
    {
        if ( c == ' ' || c == '\n' || c == '\t' ) 
            putchar(0xA);
        else 
            print_tacs(5);
    }
}

void print_tacs ( int num_tacs )
{
    for ( int i = 0; i < num_tacs; i++ )
        putchar('-');
}
