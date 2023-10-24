CC = gcc

array_w_pointers: array_w_pointers.c
	gcc array_w_pointers.c -o array_w_pointers -lm

cyclic_swap: cyclic_swap.c
	gcc cyclic_swap.c -o cyclic_swap -lm

clean:
	rm array_w_pointers cyclic_swap

test: array_w_pointers cyclic_swap
	bash test.sh