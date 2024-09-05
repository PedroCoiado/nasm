section .data
    msg db 'Hoi, Mundo'

section .text
    global _start

_start: 

  mov rax, 1                ; sys_write system call
  mov rdi, 1                ; File descriptor 1 (stoudt)   
  mov rsi, msg              ; pointer to the message
  mov rdx, 13               ; message length
  syscall

  mov rax, 60               ; sys_exit system call
  xor rdi, rdi              ; exit code 0
  syscall