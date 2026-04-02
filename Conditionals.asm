include irvine32.inc

.data
 var1 dword 12345678h
 str1 byte "Bit 4, 5, or 6 is set", 0
 str2 byte " Bit 4, 5, and 6 are all set", 0
 evenParity byte "Even Parity", 0

.code
main PROC
		comment ?
	mov ebx, 0
	mov bl, 00000001b		; test with 00001111 and 11110000
	and bl, 01110000b		; test bl
	jz message				;displpay if one of the bits is on
	jmp done


	
	message:
		mov edx, offset str1
		call writeString

	done:
  exit
  ?

  comment *
  ; 2
  mov bl, 000111000b
  cmp bl, 000111000b

  jz message2
  jmp done

  message2: 
	mov edx, offset str2 
	call writeString
	

  done:
	exit
	*

	; 3 - Checks parity, where an even pair is 2 bits turned on
	mov al, 10000001b
	xor al, 0

	jp message3
	jmp done

	message3:
	mov edx, offset evenParity
	call writeString

  done: 
	exit

main ENDP

END main