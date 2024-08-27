section .bss                 ; uninitialized data is declared.
    sum resq 1               ; reserve 8 bytes(64 bits). sum will be used to reference this memory location.
    sum_buffer resb 21       ; reserve 21 bytes. hold the string representation of the sum.

section .text                ; read only executable instuctions.
    global _start            ; make start label globaly visible.

_start:                      ; entry point of the program.
    xor rax, rax             ; set rax to 0 by xor-ing it with itself (faster than mov rax, 0).
    mov [sum], rax           ; moves value in rax into memory location labeled sum. this initializes sum to 0 and will accumulate the sum of the values.
    xor rcx, rcx             ; set rcx to 0 by xor-ing it. this will be used a loop counter.

.loop:                       ; loop through all the numbers from 0 ro 999.
    cmp rcx, 1000            ; compare the value in rcx with 1000.
    jge .done                ; jump to .done if comparison is greater or equal to 1000.

    mov rax, rcx             ; move the value of rcx(loop counter) into rax
    xor rdx, rdx             ; clear the rdx register.
    mov rbx, 3               ; loads value 3 into rbx and set it as the divisor.
    div rbx                  ; divide rax by rbx. quotient is stored in rax and remainder in rdx.
    cmp rdx, 0               ; compare the remainder to 0.
    je .add_to_sum           ; jump to add_to_sum if the remainder is 0. (je stands for "jump if equal").

    mov rax, rcx             ; copy the loop counter into rax.
    xor rdx, rdx             ; clear rdx to prepare for division.
    mov rbx, 5               ; load 5 into rax as the divisor.
    div rbx                  ; divides rax by 5 storing the remainder in rdx.
    cmp rdx, 0               ; checks if remainder is 0.
    je .add_to_sum           ; if true, jumps to add_to_sum.

    jmp .next                ; jump to next if rcx is not divisible by 3 or 5.

.add_to_sum:                 ; label...
    mov rax, [sum]           ; load the current value of sum from memory into rax.
    add rax, rcx             ; adds rcx(current number) to rax (the sum).
    mov [sum], rax           ; store updated sum back into rax (to keep track of cumulative sum).

.next:
    inc rcx                  ; increment rcx by 1.
    jmp .loop                ; jump back to the loop to continue iretating.

.done:
    mov rbx, 10              ; set rbx to 10 (will be used as a divisor to convert number to a string (base 10)).
    lea rsi, [sum_buffer+20] ; go to the end of the sum buffer.
    mov byte [rsi], 0        ; null-terminate it.

.convert_to_string:
    dec rsi                  ; decrement rsi. builds the string from the end of the buffer.
    mov rax, [sum]           ; loads the value of sum into rax (sum is the value to be converted).
    xor rdx, rdx             ; clear rdx (used to hold the remainder).
    div rbx                  ; divide rax by rbx(rbx == 10)
    add dl, '0'              ; converts the remainder(dl) froma number to its ASCII character equivalent.
    mov [rsi], dl            ; stores ASCII character into the buffer at the position pointed by rsi.
    mov [sum], rax           ; updates sum with new value in rax(quotient).
    test rax, rax            ; test if quotient is 0 (means all digits have been processed).
    jnz .convert_to_string   ; jumps back to convert_to_string if rax != 0.

.print_string:
    mov rax, 1               ; sets rax to 1(syscall write).
    mov rdi, 1               ; sets rdi to 1(standard output).
    mov rdx, 21              ; move rdx to 21(number of bytes to write).
    syscall                  ; execute the system call using the parameters set in rax and rdi.

    mov rax, 60              ; set rax to 60(syscall exit).
    xor rdi, rdi             ; xor rdi(make it 0).(0 is exit code).
    syscall                  ; execute the call.
