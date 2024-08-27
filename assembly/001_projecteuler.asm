section .bss
    sum resq 1
    sum_buffer resb 21

section .text
    global _start

_start:
    xor rax, rax
    mov [sum], rax
    xor rcx, rcx

.loop:
    cmp rcx, 1000
    jge .done

    mov rax, rcx
    xor rdx, rdx
    mov rbx, 3
    div rbx
    cmp rdx, 0
    je .add_to_sum

    mov rax, rcx
    xor rdx, rdx
    mov rbx, 5
    div rbx
    cmp rdx, 0
    je .add_to_sum

    jmp .next

.add_to_sum:
    mov rax, [sum]
    add rax, rcx
    mov [sum], rax

.next:
    inc rcx
    jmp .loop

.done:
    mov rbx, 10
    lea rsi, [sum_buffer+20]
    mov byte [rsi], 0

.convert_to_string:
    dec rsi
    mov rax, [sum]
    xor rdx, rdx
    div rbx
    add dl, '0' 
    mov [rsi], dl
    mov [sum], rax
    test rax, rax
    jnz .convert_to_string

.print_string:
    mov rax, 1
    mov rdi, 1
    mov rdx, 21
    syscall

    mov rax, 60
    xor rdi, rdi
    syscall
