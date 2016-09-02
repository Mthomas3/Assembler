global strpbrk:function

section .text


strpbrk :

push rbp
mov rbp, rsp

xor rax, rax
xor r10, r10
xor r11, r11

	; RDI first , rsi second
	; r14 = SECOND
	; r15 = FIRST
	;;  inc r10 = FIRST
	;; inc r11 = second

loop :
	mov r14, rsi
	mov r15, rdi
	cmp byte[rdi], 0
	je end
	mov r8b, byte[rsi]
	mov r9b, byte[rdi]
	cmp r9b, r8b
	je returnchar
	jmp getsec

getsec :
	cmp byte[r14], 0x0
	je char
	mov r12b, byte[r14]
	cmp byte[rdi], r12b
	je returnchar
	inc r14
	jmp getsec

returnchar :
	mov rax, rdi
	jmp end

char :
	inc rdi
	jmp loop


end :

mov rsp, rbp
pop rbp




ret


section .rodata
