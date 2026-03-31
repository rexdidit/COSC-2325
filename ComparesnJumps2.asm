include irvine32.inc

	.data
	str1 byte "Found" , 0
	array SWORD -3,-6,-1,-10,10,30,40,4
	sentinel SWORD 0

	

	.code
	main PROC
		mov esi, offset array
		mov ecx, LENGTHOF array


	next:
		test word ptr[esi], 8000h
		pushfd
		add esi, TYPE array
		popfd
		loopnz next

		jnz quit

		sub esi, type array
		mov edx, offset str1
		call writeString

		mov eax, 0
		mov ax, [esi]
		call writeInt

	quit: 
	exit


	main ENDP
	
	END main
	
