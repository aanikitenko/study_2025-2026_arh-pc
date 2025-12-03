%include 'in_out.asm'

SECTION .data
msg_x db 'Введите x: ',0
msg_a db 'Введите a: ',0
msg_result db 'Результат: ',0

SECTION .bss
x resd 1
a resd 1

SECTION .text
GLOBAL _start
_start:
mov eax, msg_x
call sprint
call readint
mov [x], eax

mov eax, msg_a
call sprint
call readint
mov [a], eax

mov ebx, [x]
mov ecx, [a]

cmp ebx, 4
jl case1

case2:
imul ebx, ecx
jmp print_result

case1:
add ebx, 4

print_result:
mov eax, msg_result
call sprint
mov eax, ebx
call iprintLF

call quit
