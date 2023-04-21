/* Synatx Check a C file */ 
#include <stdio.h> 

void syntax ( char c );

int main () 
{
    syntax(getchar());
}

void syntax ( char c )
{
    unsigned int rbi, lbi,  lbr, rbr,   rsq, lsq,   lc, rc,    sq, dq; 
    lbi = rbi = lbr = rbr = rsq = lsq = lc = rc = sq = dq = 0;
    
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
        else if ( c == '\'' ) 
            ++sq; 
        else if ( c == '\"' ) 
            ++dq; 

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
        printf("Syntax Error => [COMMENTS] \n\t Did you close your comment? \n\t\033[0;32m Fix: (Add) => \'*/\'  \033[0m \n");
    if ( lc < rc ) /* Did'nt open comment! */ 
        printf("Syntax Error => [COMMENTS] \n\t Did you open your comment? \n\t\033[0;32m Fix: (Add) => \'/*\'  \033[0m \n");
    if ( sq % 2 != 0)
        printf("Syntax Error => [QUOTES] \n\t Did you close your quotes?   \n\t\033[0;31m Missed (\') \033[0m \n"); 
    if ( dq % 2 != 0)
        printf("Syntax Error => [QUOTES] \n\t Did you close your quotes?    \n\t\033[0;31m Missed (\")  \033[0m \n");
}
