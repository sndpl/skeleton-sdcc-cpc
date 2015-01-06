.area _CODE

; -----------------------------------------------------------------------------
; unsigned char CPC_IDE_Available(void)
; -----------------------------------------------------------------------------

.globl _CPC_IDE_Available

_CPC_IDE_Available::
    push    bc
    push    hl
    ld      bc, #0xFD0F
    ld      hl, #0x3C00
iderdy1:
    in      a, (c)
    and     #0x80
    jr      z, iderdy2
    dec     l
    jr      nz, iderdy1
    jp      iderdy3
    dec     h
    jr      nz, iderdy1
    ld      l, #0xFF
    ret
iderdy2:
    pop     hl
    pop     bc
    ld      l, #0
    ret     c
    ld      l, #1
    ret
iderdy3:
    ld      bc, #0x1000
iderdy3loop:
    dec     bc
    ld      a, b
    or      c
    jp      nz, iderdy3loop
    ret
