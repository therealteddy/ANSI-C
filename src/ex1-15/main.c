// Tempterature conversion program 

#include <stdio.h> 

double convert_to_celsius ( double ); 
double convert_to_farenheit ( double ); 

int main () 
{
    printf("100F => %0.0f \n", convert_to_celsius(100));
    printf("100C => %0.0f \n", convert_to_farenheit(100));
    return 0; 
}

double convert_to_celsius ( double farenheit ) 
{
    return ( (double) 5 / 9 ) * (farenheit - 32 );  
}

double convert_to_farenheit ( double celsius ) 
{
    return ( (double) ( 9 * celsius ) / 5 ) + 32; 
}
