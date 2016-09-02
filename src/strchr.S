global strchr:function

section .text

strchr :

push rbp
mov rbp, rsp


xor rax, rax

loop :
	cmp byte[rdi + rax], sil 		; compare the first string with second argument a char
	je ptrend				; if we found the arguments in the string we call the label ptrend it will return the pointer where the occurence starts
	cmp byte[rdi + rax], 0			; if we dont and we match with the end so 0, we will return null so we will call the label nullend
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
