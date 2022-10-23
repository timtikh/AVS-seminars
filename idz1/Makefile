%.s: %.c
  gcc -S -masm=intel "$<" -o "$@"

%.o: %.s
  gcc -c -masm=intel "$<" -o "$@"

asm: main.s inp.s out.s

obj: main.o inp.o out.o

foo.exe: main.o inp.o out.o
  gcc -lc main.o inp.o out.o -o foo.exe

.PHONY: asm obj
