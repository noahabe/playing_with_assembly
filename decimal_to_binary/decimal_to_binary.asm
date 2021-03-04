;decimal  --------->  binary 
;(base10) ---------> (base2)

extern printf
section .data
	thedecimalnumber dq 839387 
	msg db "Decimal: %d",9,"Binary: %s",10,0 ;9 is ascii of \t 
						 ;10 is ascii of \n

	debugmessage db "dividend: %d remainder: %d",10,0
	number dq 2

section .bss
	thebinarynumber resb 100
section .text
	global main
main:
	mov rax,[thedecimalnumber]  
	mov rbx,thebinarynumber
	add rbx,99	
	mov byte [rbx],0
	dec rbx

bloop:
	cmp rax,0
	je exit
	
	mov rdx,0
	idiv qword [number]
	cmp rdx,0
	je zero	
one:
	mov byte [rbx],49
	dec rbx	
	jmp bloop 
zero:	
	mov byte [rbx],48
	dec rbx	
	jmp bloop 
		
exit:
;display the result
	mov rdi,msg
	mov rsi,[thedecimalnumber]
	mov rdx,rbx
	mov rax,0
	call printf			
