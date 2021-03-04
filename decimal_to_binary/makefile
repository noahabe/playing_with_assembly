decimal_to_binary: decimal_to_binary.o
	gcc -o decimal_to_binary decimal_to_binary.o -no-pie
decimal_to_binary.o: decimal_to_binary.asm
	nasm -f elf64 -g -F dwarf decimal_to_binary.asm -l decimal_to_binary.lst
