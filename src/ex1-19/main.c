#include <stdio.h> 

#define CHAR_LIMIT 1024 

int     gline       ( char line[], int MAX                      ); 
void    str_copy    ( char line[], char r_line[], int arr_len   );
void    reverse     ( char ref_line[], char rev_line[], int len );

int main() {
    char line[CHAR_LIMIT]; char r[CHAR_LIMIT]; char rev[CHAR_LIMIT];
    int cc = gline( line, CHAR_LIMIT );
    printf("%d\n", cc);
    str_copy(line, r, cc);
    reverse(r, rev, cc);
    printf("%s\n", rev);
}

int gline ( char line[], int max_char ) 
{
    int i , c; 
    i = c = 0; 

    while ( i < max_char-1 && ( c = getchar() ) != EOF && c != '\n' ) 
    {
        line[i] = c; 
        ++i; 
    }
    if ( c == '\n' ) { 
        line[i] = c; 
        ++i; 
    }
    line[i] = '\0';

    return i;
}

void str_copy ( char line[], char reversed[], int len ) 
{
    int i = 0; 
    while ( i < len+1 && line[i]  != '\0' ) 
    {
        reversed[i] = line[i]; 
        ++i;
    }
    reversed[i] = '\0';
}

void reverse ( char ref_str[] , char rev_char[], int max ) 
{
    int i = 0; int j = max; 
    while ( i < max+1 && ref_str[i] != '\0' )
    {
        rev_char[j] = ref_str[i]; 
        ++i; 
        --j;
    }
    rev_char[i] = '\0';
}
