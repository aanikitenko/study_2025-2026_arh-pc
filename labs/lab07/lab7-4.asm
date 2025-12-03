%include 'in_out.asm'

SECTION .data
msg_x db 'Введите x: ',0
msg_a db 'Введите a: ',0
msg_result db 'Результат: ',0

SECTION .bss
x resb 10
a resb 10

SECTION .text
GLOBAL _start
_start:
mov eax, msg_x
call sprint
mov ecx, x
mov edx, 10
call sread
mov eax, x
call atoi
push eax

mov eax, msg_a
call sprint
mov ecx, a
mov edx, 10
call sread
mov eax, a
call atoi
pop ebx

mov ecx, eax
mov eax, ebx

cmp eax, 4
jl case1

imul eax, ecx
jmp print_result

case1:
add eax, 4

print_result:
push eax
mov eax, msg_result
call sprint
pop eax
call iprintLF

call quit
