global memmove:function

section .text

memmove :

push rbp
push r8
mov rbp, rsp


xor rax, rax
	cmp rdi, rsi
	jl loop
	cmp rdx, 0
	je end
	dec rdx

little:
	mov r8b, byte[rsi + rdx]
	mov byte[rdi + rdx], r8b
	cmp rdx, 0
	je end
	dec rdx
	jmp little

loop :
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
