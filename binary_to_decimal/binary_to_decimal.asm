;binary  ---------> decimal
;(base2) ---------> (base10)

extern printf
section .data
	thebinarynumber db "1011110111",0
	thedecimalnumber dq 0
	msg db "Binary: %s\t Decimal: %d\n",0
section .bss
	result resq 1
section .text
	global main
main:
	
	
;display the result
			
