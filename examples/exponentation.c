#include <stdio.h> 

int power ( int, int );

int main () 
{
    printf("1 ^ 00 ==> %d \n", power(1, 0));
    printf("2 ^ 01 ==> %d \n", power(2, 1)); 
    printf("5 ^ 02 ==> %d \n", power(5, 2)); 
    return 0; 
}

int power( int base, int exp) 
{

    int b = base;
    
    if ( exp == 0 )
        return 1; 

    else {
        for ( int i = 1; i < exp; i++ )
            {
                base *= b; 
            }
        return base; // if i == 1 return base; 
   }

}
