#include <stdio.h> 

#define BITS 8
#define NEG -1

int get_range( long bits );

int main() 
{
    puts("----------------------------------------------------------------------------------------------");
    puts("=================================== UNSIGNED INTEGERS ========================================");
    puts("----------------------------------------------------------------------------------------------");
    printf("(U)Char: 0 to %d \n", get_range((sizeof(char) * BITS))NEG); 
    printf("(U)Int:  0 to %u \n",  (get_range((sizeof(int)  * BITS)))NEG); 
    printf("(U)Long: 0 to %lu \n", (unsigned long) (get_range((sizeof(long int) * BITS)))NEG); 
    printf("(U)Short: 0 to %d \n", get_range((sizeof(short)* BITS))NEG); 
    puts("----------------------------------------------------------------------------------------------");
    puts("==================================== SIGNED INTEGERS =========================================");
    puts("----------------------------------------------------------------------------------------------");
    printf("(S)Char: %d to %d \n",  (NEG*get_range(sizeof(char) * BITS))/2, (get_range(sizeof(char) * BITS)/2)NEG);
    printf("(S)Short: %d to %d \n", (NEG*get_range(sizeof(short) * BITS))/2, (get_range(sizeof(short) * BITS)/2)NEG);
    /* Finish this program off! */
}

int get_range ( long bits ) 
{
    int b = 1; 
    for ( int i = 1; i <= bits; ++i ) 
        b *= 2;
    return (b);
}
