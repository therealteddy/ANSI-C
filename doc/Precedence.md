# 'Not equals' over 'equals' 
- In C `!=` takes precedence over `=` 
- Thus the condition ( c = somefunction() != 0 ), where is C is a variable will evaluate to a legal assigment than an evaluation
- The condition, however, can be, and arguably should be written as: ( (c = somefunction()) != 0 ). The assignment (c = somefuntion() ) will return the value of the variable c, which will be tested against 0. 

# 'And' over 'Or' 
- In C `&&` takes precedence over `||` 
