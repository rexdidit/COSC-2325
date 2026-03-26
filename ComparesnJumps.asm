include irvine32.inc

.data
 var1 dword 12345678h
 
.code
main PROC
mov eax, 70

call writeInt
call crlf
call calcGrade
call writeChar

	exit
main ENDP
calcGrade proc

cmp eax, 89
ja gradeA


cmp eax, 79
ja gradeB

cmp eax, 69
ja gradeC

gradeA:
mov al, "A"
	jmp done

 gradeB: 
 mov al, "B"
 	jmp done

 gradeC:
 mov al, "C"
	jmp done

 done:
	ret
calcGrade endp

END main