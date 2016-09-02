global memcpy:function

section .text

memcpy :

push rbp
push r8
mov rbp, rsp

xor rax, rax

loop:
	cmp rax, rdx
	je end
	mov r8b, byte[rsi + rax]
	mov byte[rdi + rax], r8b
	inc rax
	jmp loop


end :

mov rax, rdi
mov rsp, rbp
pop r8
pop rbp





ret



section .rodata
