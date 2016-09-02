global strlen:function
section .text


strlen :

push rbp
mov rbp, rsp				; basic thing


xor rax, rax				; set the variable to 0


loop:
	cmp byte[rdi + rax],0		; compare the byte with 0 (rdi get the first argument)
	je end				; je, call the label end if we match with 0
	inc rax				; inc rax
	jmp loop			; call the label loop :)

end :
	mov rsp, rbp
	pop rbp

	ret					; we don't need to return something, we have the value in rax

section .rodata
