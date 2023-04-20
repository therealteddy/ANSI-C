#include <stdio.h> 

int main () 
{
    for ( char c =0; (c = getchar()) != EOF;)
    {
        if ( c == '\t')
        {
            putchar('\\');
            putchar('t');
            c = getchar();
        }
        if ( c == '\\')
        {
            putchar('\\');
            putchar('\\');
            c = getchar(); 
        }
        if ( c == '\b') 
        {
            putchar('\\');
            putchar('b');
            c = getchar();
        }

        putchar(c);

    }
}
