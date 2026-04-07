include irvine32.inc

.data
 var1 dword 12345678h
 
.code
main PROC

comment ?
; shl(logical shifts) -> fills openn bit to zeros
; arithmetic shifts ->  fills open bits with Most Significant Bit


; Isolate the Month:
; Day Bits are 0 - 4
; Month bits are 5-8
: Year bits are 9-15

mov dx, 0010011001101010b		 


;Print the day
mov eax, 0
mov ax, dx		; Make a copy

and ax, 00011111b
call writeDec

;Print the Month:
mov eax, 0
mov ax, dx		; Make a copy
shr ax, 5
and ax, 1111b	- Puts zeros at the end
call crlf
call writeDec
?

comment &
; Test
mov eax, 0
mov al, 001101011b
shr al, 1
call writeHex

call crlf

shl al, 3
call writeHex
&

mov eax, 0
mov al, 01101011b
ror al, 1
call writeHex

call crlf
rol al, 3
call writeHex

exit

MAIN ENDP
END main