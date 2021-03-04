;binary  ---------> decimal
;(base2) ---------> (base10)

extern printf
section .data
	thebinarynumber db "1011110111",0
	thedecimalnumber dq 0
	msg db "Binary: %s",9,"Decimal: %d",10,0
section .bss
	result resq 1
section .text
	global main
main:
;convert the binary number to the decimal number
;by the common algorithm
		
;display the result
	mov rdi,msg
	mov rsi,thebinarynumber
	mov rdx,[thedecimalnumber]
	mov rax,0
	call printf			
