include irvine32.inc
displayArray proto, a:ptr sdword, l:sdword

.data
 var1 dword 12345678h
 array sdword 1,2,9,6,7
 str1 byte "The array contains: " , 0
 str2 byte " Maximum value is ", 0

.code
main PROC

invoke displayArray, addr array, lengthof array
	

  exit
main ENDP

displayArray proc, a:ptr sdword, l:sdword

mov edx, offset str1
call writeString
call crlf

mov ecx, l	;	loop counter
mov edx, 0		; array index
mov eax, 0
mov ebx, 0


l1:
mov esi, a
mov eax, [esi+ebx]
call writeInt
call crlf
add ebx, type a

loop l1


ret 
displayArray endp


findMax proc , a:ptr sdword, l:sdword
mov esi, a
mov ecx, l
mov eax, [esi]
add esi, type a
dec ecx

l2:
cmp ecx, 0
je Done

mov ebx, [esi]
cmp ebx, eax
jle L3

mov eax, ebx

L3:
add esi, type a

loop l2

ret 8
findMax endp

Done: 
mov edx, offset str2
call writeString
call writeInt
call crlf

END main