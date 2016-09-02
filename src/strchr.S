global strchr:function

section .text

strchr :

push rbp
mov rbp, rsp


xor rax, rax

loop :
	cmp byte[rdi + rax], sil 
	je ptrend		
	cmp byte[rdi + rax], 0	
	je nullend
	inc rax
	jmp loop


ptrend:
	add rax, rdi
	jmp end

nullend:
	xor rax, rax

end :


mov rsp, rbp
pop rbp


ret

section .rodata
