global ASM_hello
section .data 
    msg db "Hello!" ; If you want this to print a newline after, add ", 0x0a" after the last quote mark
section .text
    ASM_hello:
        mov rax, SYS_write ; for sys_write
        mov rdi, 1 
        mov rsi, msg
        mov rdx, 6 ; amount of bytes to write
        syscall ; We can also do "int 0x80" here, but this looks cleaner
        ret

        SYS_write equ 1