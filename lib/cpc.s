.area _CODE

; -----------------------------------------------------------------------------
; void CPC_SetMode(char m)
; -----------------------------------------------------------------------------

.globl _CPC_SetMode

_CPC_SetMode:
    ld      hl, #2
    add     hl, sp
    ld      a, (hl)
    call    0xBC0E

; -----------------------------------------------------------------------------
; void CPC_SetBorder(char c)
; -----------------------------------------------------------------------------

.globl _CPC_SetBorder

_CPC_SetBorder:
    ld      hl, #2
    add     hl, sp
    ld      b, (hl)
    ld      c, b
    call    0xBC38
