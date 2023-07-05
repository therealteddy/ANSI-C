default: main.c
	gcc main.c && ./a.out

dump: main.c
	gcc main.c && objdump -d ./a.out >> tmp.asm && nvim tmp.asm && rm tmp.asm

asm: main.c
	gcc -S main.c
