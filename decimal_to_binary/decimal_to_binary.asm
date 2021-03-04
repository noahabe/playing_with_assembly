;binary  ---------> decimal
;(base2) ---------> (base10)

extern printf
section .data
	thedecimalnumber dq 1234567 
	msg db "Decimal: %d",9,"Binary: %s",10,0 ;9 is ascii of \t 
						 ;10 is ascii of \n
section .bss
	thebinarynumber resb 50
section .text
	global main
main:

	mov rbx,thebinarynumber

	mov al,48
	mov byte [rbx],al
	inc rbx

	mov al,0
	mov byte [rbx],al

;display the result
	mov rdi,msg
	mov rsi,[thedecimalnumber]
	mov rdx,thebinarynumber
	mov rax,0
	call printf			
