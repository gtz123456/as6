
section .text
extern snek_error
extern snek_print
global our_code_starts_here

our_code_starts_here:
  
mov [rsp-16], rdi
mov r15, rsi
mov rax, 1330
mov [rsp-24], rax
mov rax, [rsp-16]
mov [rsp-32], rax
xor rax, [rsp-24]
and rax, 1
cmp rax, 1
mov rdi, 0
je snek_error
mov rax, [rsp-32]
cmp rax, [rsp-24]
mov rbx, 3
cmove rax, rbx
mov rbx, 1
cmovne rax, rbx
cmp rax, 3
je elsestart1
mov rax, 3
mov [rsp-24], rax
mov rax, 7
mov [rsp-32], rax
or rax, [rsp-24]
and rax, 1
cmp rax, 1
mov rdi, 0
je snek_error
mov rax, [rsp-32]
add rax, [rsp-24]
mov rdi, 1
jo snek_error
jmp elseend1
elsestart1:
mov rax, 40
elseend1:
  ret
