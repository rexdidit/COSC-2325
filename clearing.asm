include irvine32.inc

.data
 var1 dword 12345678h

.code
main PROC

; AND
	mov eax, 0
	mov eax, 01100001b	;lowercase 'a' = 97decimal
	call writeChar		;uses AL registers
	call crlf			;new line	
	and eax, 11011111b	;clearing bit 5 - change to upper case = 'A' =65decimal
	call writeChar		;uses AL registers
	call crlf			; new line
	call writeBin
	

; OR
	; converting decimal digit to ASCII
	mov eax, 0
	mov al, 000000110b		; decimal 6
	or al, 0011				; character 6

	xor eax, eax
	mov al, 10
	and al, 10000000b

; XOR


  exit
main ENDP

END main