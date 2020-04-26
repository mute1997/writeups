all:
	nasm shellcode.S
	python -c "print(open('shellcode', 'rb').read().hex())"
