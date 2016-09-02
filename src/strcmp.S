global strcmp:function

section .text

strcmp :

push rbp
push r8
push r9
push r10
push r11
push r12
mov rbp, rsp

xor rax, rax
xor r10, r10
xor r11, r11
xor r12, r12




loop :
	mov r8b, byte[r10 + rdi]
	mov r9b, byte[r11 + rsi]
	cmp r8b, r9b
	jnz different
	cmp r8b, 0
	je equal
	inc r10
	inc r11
	jmp loop

equal :
	mov rax, 0
	je end

different :
	cmp r8b, r9b
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
pop r12
pop r11
pop r10
pop r9
pop r8
pop rbp

ret


section .rodata
