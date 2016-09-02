global strcasecmp:function
section .text


strcasecmp :

push rbp
mov rbp, rsp


xor rax, rax


loop:
	mov rax, 10

end :
	mov rsp, rbp
	pop rbp

	ret

section .rodata
