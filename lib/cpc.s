.area _CODE


; void CPC_SetMode(char m)

.globl _CPC_SetMode

_CPC_SetMode:
    ld      hl, #2
    add     hl, sp
    ld      a, (hl)
    call    0xBC0E