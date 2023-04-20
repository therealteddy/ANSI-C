# Character Arithmetic 
- This document illustrates the reason behind why `../examples/digit_counter.c` works
- In the program the array `numeric_characters[10]` has a width of 10
- The integer variable `c` holds the character read from 'text stream' by `getchar()` 

## How it works!
- '0' equals 48 ... and '9' equals (48+9) = 57 --> According to python's `chr()` 
- So when `c` is greater than or equal to '0' which inturn is equal to 48 ,and when `c` is less than or equal to '9' which equals to 57. 
- The if statement basically tests if `c` is any character between '0' and '9'
- If c is any character between '0' to '9': 
- the array `numeric_characters` is modified using the statement `++numeric_characters[c-'0']` 
- `[c-'0']` means subtract 48 from `c` 
- Since, `numeric_characters[c-'0']` only executed when `c` is  between 48 to 57, the expression always returns an integer between 0 - 9 which is the magnitude of the array `numeric_characters`. The integer returned by the expression is equal to the "character value of `c`" --> `(char) c`. 
- The resulting value is the index of the array, and it is incremented the number of times the character is read from the "text stream", which in LINUX is `stdin`. 
