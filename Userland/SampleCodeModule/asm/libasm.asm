GLOBAL system_write
GLOBAL system_read

GLOBAL console_clear

GLOBAL split_screen

GLOBAL set_screen

GLOBAL get_char

GLOBAL clear_line

GLOBAL get_time

GLOBAL timer_tick

GLOBAL set_kb_target

GLOBAL get_date

GLOBAL get_regs

GLOBAL get_memory

%macro pushStateSysCall 0
	push rbx
	push rcx
	push rdx
	push rbp
	push rdi
	push rsi
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
%endmacro

%macro popStateSysCall 0
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop rsi
	pop rdi
	pop rbp
	pop rdx
	pop rcx
	pop rbx
%endmacro

%macro sysCall 1
    pushStateSysCall
    mov rax, %1
    int 80h
    popStateSysCall
    ret

%endmacro


system_write:
    sysCall 1
    ; push rbp
    ; mov rbp,rsp
    ; mov rax, 1
    ; push rbx
    ; int 80h
    ; pop rbx
    ; mov rsp, rbp
    ; pop rbp
    ; ret

system_read:
    sysCall 0
    ; push rbp
    ; mov rbp, rsp
    ; push rbx
    ; mov rax, 0
    ; int 80h
    ; pop rbx
    ; mov rsp, rbp
    ; pop rbp
    ; ret

console_clear:
    sysCall 2
    ; push rbp
    ; mov rbp, rsp
    ; push rbx
    ; mov rax, 2
    ; int 80h
    ; pop rbx
    ; mov rsp, rbp
    ; pop rbp
    ; ret

split_screen:
    sysCall 3
    ; push rbp
    ; mov rbp, rsp
    ; push rbx
    ; mov rax, 3
    ; int 80h
    ; pop rbx
    ; mov rsp, rbp
    ; pop rbp
    ; ret

set_screen:
    sysCall 4
    ; push rbp
    ; mov rbp, rsp
    ; push rbx
    ; mov rax, 4
    ; int 80h
    ; pop rbx
    ; mov rsp, rbp
    ; pop rbp
    ; ret

get_char:
    sysCall 5
    ; push rbp
    ; mov rbp, rsp
    ; push rbx
    ; mov rax, 5
    ; int 80h
    ; pop rbx
    ; mov rsp, rbp
    ; pop rbp
    ; ret

clear_line:
    sysCall 6
    ; push rbp
    ; mov rbp, rsp
    ; push rbx
    ; mov rax, 6
    ; int 80h
    ; pop rbx
    ; mov rsp, rbp
    ; pop rbp
    ; ret

get_time:
    sysCall 7
    ; push rbp
    ; mov rbp, rsp
    ; push rbx
    ; mov rax, 7
    ; int 80h
    ; pop rbx
    ; mov rsp, rbp
    ; pop rbp
    ; ret

timer_tick:
    sysCall 8
    ; push rbp
    ; mov rbp, rsp
    ; push rbx
    ; mov rax, 8
    ; int 80h
    ; pop rbx
    ; mov rsp, rbp
    ; pop rbp
    ; ret

set_kb_target:
    sysCall 9
    ; push rbp
    ; mov rbp, rsp
    ; push rbx
    ; mov rax, 9
    ; int 80h
    ; pop rbx
    ; mov rsp, rbp
    ; pop rbp
    ; ret

get_date:
    sysCall 10


get_regs:
    sysCall 11
