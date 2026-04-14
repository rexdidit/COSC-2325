include irvine32.inc

.data
 var1 dword 12345678h

 divLabel byte "The dividend is: ", 0
 qoutLabel byte "The qoutient is: ", 0

.code
main PROC
	mov eax, 0
	mov edx, 0
	mov dx, 0			; Clear dividend
	mov ax, 100h		; dividend, low
	mov dx, 0h			; divisor
	mov ebx, 3
	div bx				; AX = 8003h(dividend)	DX = 3, answer in DX

	push dx
	mov edx, offset divLabel
	call writeString
	call writeHex
	call crlf

	pop ax
	mov edx, offset qoutLabel
	call writeString
	call writeHex


  exit
main ENDP
END main