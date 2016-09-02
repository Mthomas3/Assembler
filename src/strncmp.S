global strncmp:function

section .text

strncmp :

push rbp
mov rbp, rsp

xor rax, rax
xor r10, r10
xor r11, r11
xor r12, r12

	; RDI = first | RSI = second


loop :
	cmp r10, rdx
	je equal
	mov r8b, byte[r10 + rdi]
	mov r9b, byte[r11 + rsi]
	cmp r8b, r9b
	jnz different
	cmp byte[r10 + rdi], 0
	je end
	cmp byte[r11 + rsi], 0
	je end
	inc r10
	inc r11
	jmp loop

equal :
	mov rax, 0
	jmp end

different :
	cmp r8b, r9b ;jb inf, ja sup
	ja greater
	xor rax, rax
	mov al, r9b
	sub al, r8b
	neg rax
	jmp end

greater :
	xor rax, rax
	mov al, r8b
	sub al, r9b
	jmp end

end :

mov rsp, rbp
pop rbp

ret

section .rodata
