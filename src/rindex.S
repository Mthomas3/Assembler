global rindex:function

extern strlen

section .text

rindex :

push rbp
push r10
mov rbp, rsp

xor r10, r10
call strlen wrt ..plt


loop :
	cmp byte [rdi + rax], sil
	je good_end
	cmp rax, 0
	je end
	dec rax
	jmp loop


good_end:
	add rax, rdi

end :

mov rsp, rbp
pop r10
pop rbp

ret

section .rodata
