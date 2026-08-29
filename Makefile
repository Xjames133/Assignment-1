test-mini: test.c mini.c
	gcc test.c mini.c -Wall -o test-mini

test-mini2: mini_mod.S test.c
	gcc test.c mini_mod.S -Wall -o test-mini2

all: calc test-mini test-mini2 caller
	gcc test.c mini.c -Wall -o test-mini


# TODO: complete makefile rules for calc, test-mini, test-mini2, caller.
final: test.c final.c
	gcc test.c final.c -Wall -o final

calc: calc.c mystery.S 
	gcc calc.c mystery.S -Wall -o calc

clean:
	rm -f *.o
	rm -f calc
	rm -f caller
	rm -f test-mini
	rm -f test-mini2
