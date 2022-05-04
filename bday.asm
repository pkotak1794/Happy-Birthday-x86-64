; Program Name: Happy Birthday
; Author: Priyanka Kotak
; Program Description: The purpose of this program is to wish Happy Birthday
; to the user.

; extern statements
extern printf
extern scanf

global hbd

section .data

; variable definitions
prompt db "Please enter your name: ", 0
message1 db "Happy Birthday %s!", 10, 0
stringformat db "%s", 0

section .bss

promptname resb 64 ; reserve space for input

section .text

hbd:

; backing up registers
push rbp
mov rbp, rsp
push rdi
push rsi
push rdx
push rcx
push r8
push r9
push r10
push r11
push r12
push r13
push r14
push r15
push rbx
pushf

mov rax, 0
mov rdi, prompt
call printf

; printing out statements
mov rax, 0
mov rdi, stringformat
mov rsi, promptname
call scanf

; taking input
mov rax, 0
mov rdi, message1
mov rsi, promptname
call printf

; restoring registers
popf
pop rbx
pop r15
pop r14
pop r13
pop r12
pop r11
pop r10
pop r9
pop r8
pop rcx
pop rdx
pop rsi
pop rdi
pop rbp
ret
