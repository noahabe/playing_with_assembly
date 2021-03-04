binary_to_decimal: binary_to_decimal.o
	gcc -o binary_to_decimal binary_to_decimal.o -no-pie
binary_to_decimal.o: binary_to_decimal.asm
	nasm -f elf64 -g -F dwarf binary_to_decimal.asm -l binary_to_decimal.lst
