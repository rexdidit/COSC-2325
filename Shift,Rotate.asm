include irvine32.inc

.data
 var1 dword 12345678h

.code
main PROC

mov eax, 0

MOV AL, 00010011b
ROR AL, 2    ;AL=binary value		;ROR -  Rotates Least Signifanct Bit to the Most Significant 
call writeBin
call crlf
ROL AL, 3    ;AL=binary value		;ROL - Rotates Most Signifant Bit to the Least Significant 
call writeBin
call crlf

MOV AL, 6Bh
ROR AL, 4     ;AL=hex value
call writeHex
call crlf

;2
mov eax, 0
MOV AL, 2
call writeBin
call crlf

SHL AL, 2
call writeBin
call crlf
SHL AL, 1
call writeBin
call crlf
call crlf

;3
mov eax, 0
MOV AL, 40
call writeBin
call crlf
SHR AL, 1  ;AL= 20	Shifts Bits to the Right and Fills leftmost with Zeros
call writeBin
call crlf

SHR AL, 1  ;AL= 10
call writeBin
call crlf
call crlf

;4
mov eax, 0
CLC				; clears carry flag
MOV AL, 4Bh
call writeBin
call crlf

RCL AL, 2   ;AL=44
call writeBin
call crlf

RCR AL, 1   ;AL=22
call writeBin
call crlf
call crlf

;5

STC

MOV AL, 4Bh
call writeBin
call crlf

RCL AL, 2   ;AL=
call writeBin
call crlf

RCR AL, 1   ;AL=
call writeBin
call crlf
call crlf

  exit
main ENDP

END main