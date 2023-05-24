
section .text
extern snek_error
extern snek_print
global our_code_starts_here

our_code_starts_here:
  
mov [rsp-16], rdi
mov r15, rsi
mov rax, 0
mov [rsp-24], rax
mov rax, 2
mov [rsp-32], rax
mov rax, 4
mov [rsp-40], rax
mov rax, 6
mov [rsp-48], rax
mov rax, 8
mov [rsp-56], rax
mov rax, 10
mov [rsp-64], rax
mov rax, 6
mov [r15+0], rax
mov rbx, [rsp-24]
mov [r15+8], rbx
mov rbx, [rsp-32]
mov [r15+16], rbx
mov rbx, [rsp-40]
mov [r15+24], rbx
mov rbx, [rsp-48]
mov [r15+32], rbx
mov rbx, [rsp-56]
mov [r15+40], rbx
mov rbx, [rsp-64]
mov [r15+48], rbx
mov rax, r15
shl rax, 2
add rax, 1
add r15, 56
mov [rsp-24], rax
mov rax, 0
shr rax, 1
mov [rsp-32], rax
mov rax, [rsp-24]
mov rbx, rax
and rbx, 3
cmp rbx, 1
mov rdi, 2
jne snek_error
shr rax, 2
mov rbx, [rax+0]
cmp rbx, [rsp-32]
mov rdi, 3
jle snek_error
add rax, 8
mov rbx, [rsp-32]
add rbx, rax
mov rax, [rbx+0]
mov [rsp-40], rax
mov rdi, rax
sub rsp, 40
call snek_print
add rsp, 40
mov rax, [rsp-40]
mov rax, 2
shr rax, 1
mov [rsp-32], rax
mov rax, [rsp-24]
mov rbx, rax
and rbx, 3
cmp rbx, 1
mov rdi, 2
jne snek_error
shr rax, 2
mov rbx, [rax+0]
cmp rbx, [rsp-32]
mov rdi, 3
jle snek_error
add rax, 8
mov rbx, [rsp-32]
add rbx, rax
mov rax, [rbx+0]
mov [rsp-40], rax
mov rdi, rax
sub rsp, 40
call snek_print
add rsp, 40
mov rax, [rsp-40]
mov rax, 4
shr rax, 1
mov [rsp-32], rax
mov rax, [rsp-24]
mov rbx, rax
and rbx, 3
cmp rbx, 1
mov rdi, 2
jne snek_error
shr rax, 2
mov rbx, [rax+0]
cmp rbx, [rsp-32]
mov rdi, 3
jle snek_error
add rax, 8
mov rbx, [rsp-32]
add rbx, rax
mov rax, [rbx+0]
mov [rsp-40], rax
mov rdi, rax
sub rsp, 40
call snek_print
add rsp, 40
mov rax, [rsp-40]
mov rax, 6
shr rax, 1
mov [rsp-32], rax
mov rax, [rsp-24]
mov rbx, rax
and rbx, 3
cmp rbx, 1
mov rdi, 2
jne snek_error
shr rax, 2
mov rbx, [rax+0]
cmp rbx, [rsp-32]
mov rdi, 3
jle snek_error
add rax, 8
mov rbx, [rsp-32]
add rbx, rax
mov rax, [rbx+0]
mov [rsp-40], rax
mov rdi, rax
sub rsp, 40
call snek_print
add rsp, 40
mov rax, [rsp-40]
mov rax, 12
shr rax, 1
mov [rsp-32], rax
mov rax, [rsp-24]
mov rbx, rax
and rbx, 3
cmp rbx, 1
mov rdi, 2
jne snek_error
shr rax, 2
mov rbx, [rax+0]
cmp rbx, [rsp-32]
mov rdi, 3
jle snek_error
add rax, 8
mov rbx, [rsp-32]
add rbx, rax
mov rax, [rbx+0]
mov [rsp-40], rax
mov rdi, rax
sub rsp, 40
call snek_print
add rsp, 40
mov rax, [rsp-40]
  ret
