global memset:function

section .text

memset :


push rbp
mov rbp, rsp

xor rax, rax


loop :
	cmp rax, rdx
	jz end
	mov byte[rdi + rax], sil
	inc rax
	jmp loop

end :

mov rax, rdi
mov rsp, rbp
pop rbp




ret



section .rodata
