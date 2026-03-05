; Author: Ginnette Serrano-Correa
; Date: 9/3/2023
; Description: this program adds two numbers

.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.data
    ; declare variables here
	

.code
main PROC
 mov ecx, 5
 mov eax, 0		; accumulator 

 outerLoop:

	push ecx		; SAVING outer loop counter to stack
 mov ecx, 3			; inner loop counter 
	inLoop:
		add eax, ecx	; accumulating ecx
	Loop inLoop		; does ecx--	ecx==0

	pop ecx			; restore my outer loop counter
 Loop outerLoop
    INVOKE ExitProcess,0
main ENDP

END main