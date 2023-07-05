#include <stdio.h> 

#ifndef BASE_CHAR 
    #define BASE_CHAR 48 
#else 
    #warning BASE_CHAR already defined! 
#endif 

int ctoi ( const char c ); 
int is_even ( const int x ); 

int main() 
{
    int c = ctoi( getchar() );
    if (is_even(c)) printf("%d, is even!\n", c); 
    if (!is_even(c)) printf("%d, is odd!\n", c);
    return 0; 
}

int ctoi ( const char c ) 
{
    return c-BASE_CHAR;     
}

int is_even( const int x ) 
{
    if (!x%2) return 0;
    else if (x%2) return 1; 
    else /* The number is 1 */ 
        return 1; 
}
