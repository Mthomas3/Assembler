global strlen:function
section .text


strlen :

push rbp
mov rbp, rsp


xor rax, rax	


loop:
	cmp byte[rdi + rax],0	
	je end			
	inc rax			
	jmp loop		

end :
	mov rsp, rbp
	pop rbp

	ret			

section .rodata
