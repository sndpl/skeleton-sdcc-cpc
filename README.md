## Skeleton for sdcc/makefile projects

An exemplary Amstrad Schneider CPC "hello world" program. To create the binary, following CLI tools must be present:

- [sdcc](http://sdcc.sourceforge.net/) (including sdasz80)
- [hex2bin](http://hex2bin.sourceforge.net/)

A successful build run should result in something like this:

```
$ make
sdasz80 -o crt0_cpc.rel ./lib/crt0_cpc.s
sdasz80 -o conio.rel ./lib/conio.s
sdcc -I./include -V -mz80 --code-loc 0x0138 --data-loc 0 --no-std-crt0 crt0_cpc.rel conio.rel ./src/main.c
+ "/usr/bin/sdcpp" -nostdinc -Wall -I./include -obj-ext=.rel -DSDCC_STACK_AUTO -DSDCC_INT_LONG_REENT -DSDCC_FLOAT_REENT -DSDCC=310 -DSDCC_REVISION=7066 -DSDCC_z80 -D__z80 -isystem "/usr/bin/../share/sdcc/include/z80" -isystem "/usr/share/sdcc/include/z80" -isystem "/usr/bin/../share/sdcc/include" -isystem "/usr/share/sdcc/include"  "./src/main.c"
+ "/usr/bin/sdasz80" -plosgffwz "main.rel" "main.asm"
+ "/usr/bin/sdldz80" -nf "main.lk"
hex2bin main.ihx
hex2bin v1.0.11, Copyright (C) 2012 Jacques Pelletier & contributors

Lowest address  = 00000100
Highest address = 0000016E
Pad Byte        = FF
8-bit Checksum = 15
```

# Thanks

Assembly snippets were included which originate from sdcc (crt0.s) and Hans Hansen (conio).
