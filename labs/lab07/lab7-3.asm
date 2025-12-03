%include 'in_out.asm'

SECTION .data
a dd 44
b dd 74 
c dd 17
min_msg db 'Наименьшее число: ',0

SECTION .text
GLOBAL _start
_start:
mov eax, [a]
mov ebx, [b]
mov ecx, [c]

cmp eax, ebx
jl compare_with_c
mov eax, ebx

compare_with_c:
cmp eax, ecx
jl print_result
mov eax, ecx

print_result:
mov esi, eax

mov eax, min_msg
call sprint

mov eax, esi
call iprintLF
call quit
