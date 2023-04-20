CC=gcc 
CFLAGS=-02 -o  

SRCDIR=./src
BINDIR=./bin
EXMDIR=./examples

main: 
	$(CC) $(SRCDIR)/ex1-10/main.c -o $(BINDIR)/$@.app 
