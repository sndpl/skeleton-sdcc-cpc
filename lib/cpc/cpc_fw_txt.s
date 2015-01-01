.area _CODE

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
