## Skeleton C project for Amstrad/Schneider CPC

Will create a "hello world" program running on Amstrad/Schneider CPC Z80 platform and emulated hardware. Following packages are required:

- make
- binutils
- [sdcc](http://sdcc.sourceforge.net/)

#### Compiling

A build run should result in the following output:

```
sdasz80 -o runtime.rel lib/runtime.s
sdasz80 -o conio.rel lib/conio.s
sdasz80 -o cpc_fw_km.rel lib/cpc/cpc_fw_km.s
sdasz80 -o cpc_fw_scr.rel lib/cpc/cpc_fw_scr.s
sdasz80 -o cpc_fw_txt.rel lib/cpc/cpc_fw_txt.s
sdcc -Iinclude -V -mz80 --code-loc 0x0138 --data-loc 0 --no-std-crt0 runtime.rel conio.rel cpc_fw_km.rel cpc_fw_scr.rel cpc_fw_txt.rel src/main.c
+ /usr/local/bin/sdcpp -nostdinc -Wall -Iinclude -obj-ext=.rel -D__SDCC_STACK_AUTO -DSDCC_STACK_AUTO -D__SDCC_INT_LONG_REENT -DSDCC_INT_LONG_REENT -D__SDCC_FLOAT_REENT -DSDCC_FLOAT_REENT -D__SDCC=3_4_1 -DSDCC=341 -D__SDCC_REVISION=9142 -DSDCC_REVISION=9142 -D__SDCC_z80 -DSDCC_z80 -D__z80 -D__STDC_NO_COMPLEX__ -D__STDC_NO_THREADS__ -D__STDC_NO_ATOMICS__ -D__STDC_NO_VLA__ -isystem /usr/local/bin/../share/sdcc/include/z80 -isystem /usr/local/share/sdcc/include/z80 -isystem /usr/local/bin/../share/sdcc/include -isystem /usr/local/share/sdcc/include  src/main.c
+ /usr/local/bin/sdasz80 -plosgffw main.rel main.asm
+ /usr/local/bin/sdldz80 -nf main.lk
objcopy -Iihex -Obinary main.ihx main.bin
```

#### Creating a disk image

Using [CPCDiskXP](http://www.cpcmania.com/cpcdiskxp/cpcdiskxp.htm) (Windows):

```
CPCDiskXP -File main.bin -AddAmsdosHeader 100 -AddToNewDsk image.dsk
```

#### Thanks

Various code snippets were included which originate from sdcc and Hans Hansen (runtime.s, putchar.s, conio.s), Raúl Simarro ([cpcrslib](https://code.google.com/p/cpcrslib/)) and Kevin Thacker.
