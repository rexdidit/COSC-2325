include irvine32.inc

.data
 var1 dword 12345678h

.code
main PROC
	mov eax, 0
	mov eax, 00001011b	;lowercase 'a' = 97decimal
	call writeChar		;uses AL registers
	call crlf			;new line	
	and eax, 11011111b	;clearing bit 5 - change to upper case = 'A' =65decimal
	call writeChar		;uses AL registers
	call crlf			; new line
	call writeBin

  exit
main ENDP

END main