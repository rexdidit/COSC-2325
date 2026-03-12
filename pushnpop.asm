; Author: Ginnette Serrano-Correa
; Date: 9/3/2023
; Description: this program adds two numbers

.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
include irvine32.inc


.data
    ; declare variables here
	var1 dword 12345678h

.code
main PROC
	call procedure1

	call writeHex
	exit
main ENDP

procedure1 proc
mov eax, [esp]
push 5
mov ebx, [esp]
pop var1

ret 
procedure1 endp

END main