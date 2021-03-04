; icalc.asm
extern printf
section .data							
	bstring db "10111101011",10,0
	abit db "%d",10,0
section .bss
section .text							
	global main						
main:
	mov rbx,bstring
	xor rsi,rsi
	xor r15,r15
bloop:
	mov byte r15b, [rbx]
	sub r15,48
	mov rdi,abit
	mov rsi,r15
	mov rax,0
	call printf

	inc rbx
	add r15,48
	cmp r15b,10
	jne bloop
