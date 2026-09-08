all: calc test-mini test-mini2 caller
	make calc
	make test-mini
	make test-mini2
	make caller

test-mini: test.c mini.c
	gcc test.c mini.c -Wall -o test-mini

test-mini2: mini_mod.S test.c
	gcc -Wall -c -o test.o test.c
	as -o mini2.o mini_mod.S
	gcc test.o mini2.o -o test-mini2


# TODO: complete makefile rules for calc, test-mini, test-mini2, caller.
final: test.c final.c
	gcc test.c final.c -Wall -o final

calc: calc.c mystery.S 
	gcc -Wall -c -o calc.o calc.c
	as -o mystery.o mystery.S
	gcc  calc.o mystery.o -o calc


caller:
	gcc caller.c -o caller

clean:
	rm -f *.o
	rm -f calc
	rm -f caller
	rm -f test-mini
	rm -f test-mini2
