# include <stdio.h>  

/* Square a number */ 
int sqr (int x); 

/* Raise a x to y */ 
int raise (int x, int y); 

/* Hex String to decimal integer */ 
int htoi (char s[]); /* TODO: WRITE A HTOI FUNCTION --> COMPLETED ( 2023-06-25 ) */  

/* Count the number of elements in the array s[] */ 
int charrlen (char s[]); 

/* Character to integer */ 
int ctoi ( char c ); 

/* Is c a digit? */ 
int is_digit(char c); 

/* Check and load a  hex value */ 
int load_hex ( char hx[], char hy[] ); 

/* is c a hex char? */ 
int is_hex_char( char c ); 

/* All possible hex characters */ 
enum hexc { a = 10, b, c, d, e, f }; 

int main() 
{
    /* A string literal to hold modded hex values */ 
    char nhx[1024]; 
    /* Strip the hex string */ 
    load_hex("0x0001", nhx);
    /* Convert hex to int */ 
    int ihx = htoi(nhx);
    /* Print the integer value of hex string */ 
    printf("%d\n", ihx);
} 

int sqr(int x) 
{
    return x * x; 
}

int raise (int x, int y)
{
    if (y > 1) /* if y != 0 && y != 1 */  
    {
        for ( int i = 1; i < y; ++i ) 
        {
            x *= x; 
        }
        return x; 
    }
    else if (y) /* if x raised to 1 */  
        return x; 
    else /* if x raised to 0 */ 
        return 1; 
}

int charrlen (char s[]) 
{
    int i;
    for ( i = 0; s[i] != '\0'; ++i );
    return i;
}

int ctoi (char c) 
{
    if ( c >= '0' && c <= '9' ) return ( c - '0' );
    else return 0;
}

int is_digit (char c) 
{
    if ( c >= '0' && c <= '9' ) return 1; 
    else return 0; 
}

int load_hex( char hx[], char hy[] ) {
    /* TODO ADD SYNTAX CHECK FOR THE HEX STRING --> (COMPLETED: 2023/06/25) */ 
    /* Check for prefixes, strip them and update hy[] */ 
    int i, j; 
    i = j =0; 
    if ( hx[i] == '0' && ( hx[++i] == 'x' ) || ( hx[i] == 'X') ) {
        while ( i <= charrlen(hx) && hx[++i] != '\0' ) {
            if ( !is_hex_char(hx[i]) && !is_digit(hx[i]) ) {
                for ( int k = 0; k <= charrlen(hx)-3; ++k ) hy[k] = 0; 
                return 0;
                break;
            }
            hy[j] = hx[i]; 
            ++j;
         }
    } else return 0;
    return 1; 
}

int is_hex_char ( char c ) 
{
    if ( ( c >= 'a' && c <= 'f' ) || ( c >= 'A' && c <= 'F' ) ) return 1; 
    else return 0;
}

int htoi ( char hx[] ) /* TODO: Write a htoi function --> COMPLETED ( 2023-06-26 )  */  
{
    int p = charrlen(hx)-1; 
    int hr = 0;  
    for ( int i = 0; i <= charrlen(hx) && p > -1; ++i ) 
    {
        if ( hx[i] == 'a' || hx[i] == 'A' ) 
            hr += raise(16, p) * a; 
        else if ( hx[i] == 'b' || hx[i] == 'B' ) 
            hr += raise(16, p) * b; 
        else if ( hx[i] == 'c' || hx[i] == 'C' ) 
            hr += raise(16, p) * c; 
        else if ( hx[i] == 'd' || hx[i] == 'D' ) 
            hr += raise(16, p) * d; 
        else if ( hx[i] == 'e' || hx[i] == 'E' ) 
            hr += raise(16, p) * e; 
        else if ( hx[i] == 'f' || hx[i] == 'F' ) 
            hr += raise(16, p) * f;
        else 
            hr += ctoi(hx[i]) * raise(16, p);
       
        /* Decrement the base */ 
        --p; 
    }
    return hr; 
}
