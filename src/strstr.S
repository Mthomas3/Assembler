global strstr:function

section .text

strstr :

push rbp
mov rbp, rsp

xor rax, rax
xor r10, r10
xor r11, r11

loop :
	mov r8b, byte[rsi + r11]
	cmp r8b, 0x0
	je equal
	cmp r8b, byte[rdi + r10]
	je equal
	cmp byte[rdi + r10], 0x0
	je quite
	inc r10
	jmp loop


quite :
	xor rax, rax
	jmp end

equal :
	mov rax, r10
	add rax, rdi
	jmp end

end :



mov rsp, rbp
pop rbp


ret


section .rodata
