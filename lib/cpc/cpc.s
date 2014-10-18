.area _CODE

; -----------------------------------------------------------------------------
; void CPC_SetMode(char m)
; -----------------------------------------------------------------------------

.globl _CPC_SetMode

_CPC_SetMode:
    ld      hl, #2
    add     hl, sp
    ld      a, (hl)
    jp      0xBC0E

; -----------------------------------------------------------------------------
; void CPC_SetBorder(char c)
; -----------------------------------------------------------------------------

.globl _CPC_SetBorder

_CPC_SetBorder:
    ld      hl, #2
    add     hl, sp
    ld      b, (hl)
    ld      c, b
    jp      0xBC38

; -----------------------------------------------------------------------------
; void CPC_SetInk(unsigned char p, unsigned char c)
; -----------------------------------------------------------------------------

.globl _CPC_SetInk

_CPC_SetInk:
    ld      hl, #2
    add     hl, sp
    ld      a, (hl)
    inc     hl
    ld      b, (hl)
    ld      c, b
    jp      0xBC32

; -----------------------------------------------------------------------------
; void CPC_SetPen(unsigned char p)
; -----------------------------------------------------------------------------

.globl _CPC_SetPen

_CPC_SetPen:
    ld      hl, #2
    add     hl, sp
    ld      a, (hl)
    jp      0xBB90

; -----------------------------------------------------------------------------
; void CPC_SetPaper(unsigned char p)
; -----------------------------------------------------------------------------

.globl _CPC_SetPaper

_CPC_SetPaper:
    ld      hl, #2
    add     hl, sp
    ld      a, (hl)
    jp      0xBB96
