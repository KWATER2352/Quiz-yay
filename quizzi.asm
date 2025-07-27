section .data
    x dd 10
    y dd 20
    z dd 30

section .bss
    result resd 1

section .text
    global _start

add_three:
    mov eax, [x]
    add eax, [y]
    add eax, [z]
    mov [result], eax
    ret

_start:
    call add_three
    mov ebx, eax
    mov eax, 1
    int 0x80

