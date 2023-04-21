/* Synatx Check a C file */ 
#include <stdio.h> 

void syntax ( char c );

int main () 
{
    syntax(getchar());
}

void syntax ( char c )
{
    unsigned int rbi, lbi,  lbr, rbr,   rsq, lsq,   lc, rc; 
    lbi = rbi = lbr = rbr = rsq = lsq = lc = rc = 0;
    
    /* Look for syntax errors! */ 
    while ( c != EOF ) {
        if ( c == '(' ) 
            ++lbi; 
        else if ( c == ')' ) 
            ++rbi;
        else if ( c == '{' ) 
            ++lbr; 
        else if ( c == '}' ) 
            ++rbr; 
        else if ( c == '[' )
            ++lsq; 
        else if ( c == ']' ) 
            ++rsq;
        else if ( c == '/' ) {
            c = getchar(); 
                if ( c == '*' ) 
                    ++lc;
        }
        else if ( c == '*' ) {
            c = getchar(); 
                if ( c == '/' ) 
                    ++rc; 
        }
    
        c = getchar();
    }

    /* Print Errors! */ 
    if ( lbi > rbi ) /* Missed ) */ 
        printf("Syntax Error => [BRACKETS] \n\t Are you missing a \')\'? \n");
    if ( lbi < rbi ) /* Missed ( */ 
        printf("Syntax Error => [BRACKETS] \n\t Are you missing a \'(\'? \n");
    if ( lbr > rbr ) /* Missed } */ 
        printf("Syntax Error => [BRACKETS] \n\t Are you missing a \'}\'? \n");
    if ( lbr < rbr ) /* Missed { */ 
        printf("Syntax Error => [BRACKETS] \n\t Are you missing a \'{\'? \n");
    if ( lsq > rsq ) /* Missed ] */ 
        printf("Syntax Error => [BRACKETS] \n\t Are you missing a \']\'? \n");
    if ( lsq < rsq ) /* Missed [ */ 
        printf("Syntax Error => [BRACKETS] \n\t Are you missing a \'[\'? \n");
    if ( lc > rc ) /* Did'nt close comment! */ 
        printf("Syntax Error => [COMMENTS] \n\t Did you close your comment? \n\t Fix: (Add) => \'*/\' \n");
    if ( lc < rc ) /* Did'nt open comment! */ 
        printf("Syntax Error => [COMMENTS] \n\t Did you open your comment? \n\t Fix: (Add) => \'/*\' \n");
}
