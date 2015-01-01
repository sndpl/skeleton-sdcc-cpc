.area _CODE

; -----------------------------------------------------------------------------
; void CPC_FW_SetMode(char m)
; -----------------------------------------------------------------------------

.globl _CPC_FW_SetMode

_CPC_FW_SetMode:
    ld      hl, #2
    add     hl, sp
    ld      a, (hl)
    jp      0xBC0E

; -----------------------------------------------------------------------------
; void CPC_FW_SetBorder(char c)
; -----------------------------------------------------------------------------

.globl _CPC_FW_SetBorder

_CPC_FW_SetBorder:
    ld      hl, #2
    add     hl, sp
    ld      b, (hl)
    ld      c, b
    jp      0xBC38

; -----------------------------------------------------------------------------
; void CPC_FW_SetInk(unsigned char p, unsigned char c)
; -----------------------------------------------------------------------------

.globl _CPC_FW_SetInk

_CPC_FW_SetInk:
    ld      hl, #2
    add     hl, sp
    ld      a, (hl)
    inc     hl
    ld      b, (hl)
    ld      c, b
    jp      0xBC32

; -----------------------------------------------------------------------------
; void CPC_FW_SetPen(unsigned char p)
; -----------------------------------------------------------------------------

.globl _CPC_FW_SetPen

_CPC_FW_SetPen:
    ld      hl, #2
    add     hl, sp
    ld      a, (hl)
    jp      0xBB90

; -----------------------------------------------------------------------------
; void CPC_FW_SetPaper(unsigned char p)
; -----------------------------------------------------------------------------

.globl _CPC_FW_SetPaper

_CPC_FW_SetPaper:
    ld      hl, #2
    add     hl, sp
    ld      a, (hl)
    jp      0xBB96
