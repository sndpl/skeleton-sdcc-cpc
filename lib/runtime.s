.module crt0
.globl _main

.area _HEADER (ABS)

.org 0x100

    jp      init
  
.org 0x110

init:
    call    gsinit
    call    _main
    jp      _exit

.area _HOME
.area _CODE
.area _GSINIT
.area _GSFINAL
.area _DATA
.area _BSS
.area _HEAP
.area _CODE

__clock::
    ret

_exit::
    ret

.area _GSINIT

gsinit::

.area _GSFINAL
    ret
