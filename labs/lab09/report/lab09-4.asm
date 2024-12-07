%include 'in_out.asm'

SECTION .data
msg db "Результат: ",0

SECTION .text
global _start

f:
    imul eax, 5
    add eax, 17
    ret

_start:
    pop ecx
    pop edx
    sub ecx, 1

    mov esi, 0

next:
    cmp ecx, 0h
    jz _end

    pop eax
    call atoi

    call f
    add esi, eax

    loop next

_end:
    mov eax, msg
    call sprint
    mov eax, esi
    call iprintLF
    call quit
