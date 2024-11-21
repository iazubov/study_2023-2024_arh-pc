%include 'in_out.asm'

SECTION .data
   msg1: DB 'Введите x: ', 0h
   msg2: DB 'Введите a: ', 0h
   ans: DB 'Результат системы: ', 0h

SECTION .bss
   x: RESB 80
   a: RESB 80
   res: RESB 80

SECTION .text
   GLOBAL _start

_start:
   mov eax, msg1
   call sprint
   mov ecx, x
   mov edx, 80
   call sread

   mov eax, x
   call atoi
   mov [x], eax

   mov eax, msg2
   call sprint
   mov ecx, a
   mov edx, 80
   call sread

   mov eax, a
   call atoi
   mov [a], eax

   ; Условие: если a >= 7, то вычисляем a - 7
   mov eax, [a]
   cmp eax, 7
   jl less_than_7  ; Переход, если a < 7

   ; a >= 7: вычисление a - 7
   sub eax, 7
   jmp store_result

less_than_7:
   ; a < 7: вычисление a * x
   mov eax, [a]
   imul eax, [x]

store_result:
   mov [res], eax

   mov eax, ans
   call sprint
   mov eax, [res]
   call iprintLF

   call quit
