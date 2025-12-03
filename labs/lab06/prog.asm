%include 'in_out.asm'

SECTION .data
    msg_yrav DB 'Вычисляем выражение: y = (11 + 𝑥)*2 - 6', 0
    msg_x DB 'Введите значение x: ', 0
    msg_y DB 'Результат: y = ', 0

SECTION .bss
x: RESB 80

SECTION .text
GLOBAL _start
_start:
mov eax, msg_yrav
call sprintLF

mov eax, msg_x
call sprint

mov ecx, x
mov edx, 10
call sread

mov eax, x
call atoi

mov ebx, 10     
mul ebx         
sub eax, 5     
mov ebx, eax    
mul ebx    
   


mov edi, eax
mov eax, msg_y
call sprint
mov eax, edi
call iprintLF

call quit
