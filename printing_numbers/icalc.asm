; icalc.asm
extern printf
section .data							
	abit db "%d",10,0
	number1 dq 5
section .bss
section .text							
	global main						
main:
	mov r15,[number1]
bloop:
	mov rdi,abit
	mov rsi,r15
	mov rax,0
	call printf
	dec r15
	cmp r15,0
	jne bloop
