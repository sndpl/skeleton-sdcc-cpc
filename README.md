## Skeleton for C projects for Amstrad/Schneider CPC

Will create a "hello world" binary, running on Amstrad/Schneider CPC Z80 platform and/or emulated hardware. Following CLI tools must be available to your build environment:

- GNU Make
- [sdcc](http://sdcc.sourceforge.net/) (includes sdasz80, installable e.g. through apt-get)
- [hex2bin](http://hex2bin.sourceforge.net/)

#### Compiling

A build run should result in the following output:

```
$ make
sdasz80 -o crt0_cpc.rel ./lib/crt0_cpc.s
sdasz80 -o conio.rel ./lib/conio.s
sdasz80 -o cpc.rel ./lib/cpc.s
sdcc -I./include -V -mz80 --code-loc 0x0138 --data-loc 0 --no-std-crt0 crt0_cpc.rel conio.rel cpc.rel ./src/main.c
+ "/usr/bin/sdcpp" -nostdinc -Wall -I./include -obj-ext=.rel -DSDCC_STACK_AUTO -DSDCC_INT_LONG_REENT -DSDCC_FLOAT_REENT -DSDCC=310 -DSDCC_REVISION=7066 -DSDCC_z80 -D__z80 -isystem "/usr/bin/../share/sdcc/include/z80" -isystem "/usr/share/sdcc/include/z80" -isystem "/usr/bin/../share/sdcc/include" -isystem "/usr/share/sdcc/include"  "./src/main.c"
+ "/usr/bin/sdasz80" -plosgffwz "main.rel" "main.asm"
+ "/usr/bin/sdldz80" -nf "main.lk"
hex2bin main.ihx
hex2bin v1.0.11, Copyright (C) 2012 Jacques Pelletier & contributors

Lowest address  = 00000100
Highest address = 0000019F
Pad Byte        = FF
8-bit Checksum = F7
```

#### Creating a disk image

Using [CPCDiskXP](http://www.cpcmania.com/cpcdiskxp/cpcdiskxp.htm) (Windows):

```
CPCDiskXP -File main.bin -AddAmsdosHeader 100 -AddToNewDsk image.dsk
```

#### Thanks

Assembly snippets were included which originate from sdcc (crt0.s), Hans Hansen (conio) and Raúl Simarro (cpcrslib).
