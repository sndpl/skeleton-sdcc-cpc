; written by H. Hansen, 2003

.area _CODE

.globl _cgetc

_cgetc:
    call    0xBB18
    ld      l, a
    ret

.globl _cputs

_cputs:
    ld      hl, #2
    add     hl, sp
    ld      e, (hl)
    ld      hl, #3
    add     hl, sp
    ld      d, (hl)

cputs$:
    ld      a, (de)
    cp      #0
    ret     z
    call    0xBB5A
    inc     de
    jr      cputs$
