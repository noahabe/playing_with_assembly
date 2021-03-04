;binary  ---------> decimal
;(base2) ---------> (base10)

extern printf
section .data
	thebinarynumber db "1011110111",0
	exponent equ $-thebinarynumber-2  
	thedecimalnumber dq 0
	msg db "Binary: %s",9,"Decimal: %d",10,0 ;9 is ascii of \t 
						 ;10 is ascii of \n
section .bss
	result resq 1
section .text
	global main
main:
	xor rcx,rcx

;convert the binary number to the decimal number
;by the common algorithm
	mov rcx, exponent
	xor rax,rax
	xor rbx,rbx
	mov rbx,1

	mov rdx,thebinarynumber
	add rdx,exponent
	add rdx,1

	xor r8,r8

bloop:
	mov rbx,1
	mov rax,[rdx]
	sub rax,48
	imul rax,rbx

	add r8,rax
	dec rdx
	add rbx,rbx
	loop bloop
	
	mov [thedecimalnumber],r8
				
;display the result
	mov rdi,msg
	mov rsi,thebinarynumber
	mov rdx,[thedecimalnumber]
	mov rax,0
	call printf			
