0x08048060 <+0>:     push   %esp
0x08048061 <+1>:     push   $0x804809d  ;address (_exit)

;レジスタの初期化
0x08048066 <+6>:     xor    %eax,%eax
0x08048068 <+8>:     xor    %ebx,%ebx
0x0804806a <+10>:    xor    %ecx,%ecx
0x0804806c <+12>:    xor    %edx,%edx

;バッファに書き込み (Let's start the CTF:)
0x0804806e <+14>:    push   $0x3a465443   ;:FTC
0x08048073 <+19>:    push   $0x20656874   ; eht
0x08048078 <+24>:    push   $0x20747261   ; tra
0x0804807d <+29>:    push   $0x74732073   ;ts s
0x08048082 <+34>:    push   $0x2774654c   ;'etL

;sys_write
0x08048087 <+39>:    mov    %esp,%ecx   ;const char __user *buf
0x08048089 <+41>:    mov    $0x14,%dl   ;int mode
0x0804808b <+43>:    mov    $0x1,%bl    ;unsigned int fd
0x0804808d <+45>:    mov    $0x4,%al    ;sys_write
0x0804808f <+47>:    int    $0x80

;sys_read
0x08048091 <+49>:    xor    %ebx,%ebx   ;unsigned int fd
0x08048093 <+51>:    mov    $0x3c,%dl   ;size_t count
0x08048095 <+53>:    mov    $0x3,%al    ;sys_read
0x08048097 <+55>:    int    $0x80

0x08048099 <+57>:    add    $0x14,%esp  ;pop 20
0x0804809c <+60>:    ret
