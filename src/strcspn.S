global strcspn:function

section .text


strcspn :

push rbp
mov rbp, rsp

xor rax, rax
xor r14, r14


loop :
	jmp compare
follow:
	cmp byte [rdi + rax], 0
	je end
	inc rax
	jmp loop

compare:
	xor r10, r10

compare_loop:
	cmp byte [rsi + r10], 0
	je follow
	xor r14, r14
	mov r14b, [rdi + rax]
	cmp byte [rsi + r10], r14b
	je end
	inc r10
	jmp compare_loop

end :
mov rsp, rbp
pop rbp




ret


section .rodata
