.area _CODE

; -----------------------------------------------------------------------------
; void CPC_GFX_Move(int x, int y)
; -----------------------------------------------------------------------------

.globl _CPC_GFX_Move

_CPC_GFX_Move:
    ld      hl, #2
    add     hl, sp
    ld      a, (hl)
    ld      e, a

    ld      hl, #3
    add     hl, sp
    ld      a, (hl)
    ld      d, a

    ld      hl, #4
    add     hl, sp
    ld      a, (hl)
    ld      c, a

    ld      hl, #5
    add     hl, sp
    ld      a, (hl)
    ld      b, a

    ld      h, b
    ld      l, c
    call    0xBBC0
    ret

; -----------------------------------------------------------------------------
; void CPC_GFX_Draw(int x, int y)
; -----------------------------------------------------------------------------

.globl _CPC_GFX_Draw

_CPC_GFX_Draw:
    ld      hl, #2
    add     hl, sp
    ld      a, (hl)
    ld      e, a

    ld      hl, #3
    add     hl, sp
    ld      a, (hl)
    ld      d, a

    ld      hl, #4
    add     hl, sp
    ld      a, (hl)
    ld      c, a

    ld      hl, #5
    add     hl, sp
    ld      a, (hl)
    ld      b, a

    ld      h, b
    ld      l, c
    call    0xBBF6
    ret

; -----------------------------------------------------------------------------
; void CPC_GFX_VSync(void)
; -----------------------------------------------------------------------------

.globl _CPC_GFX_VSync

_CPC_GFX_VSync:
    ld      b, #0xF5

syncwait$:
    in      a, (c)
    rra
    jp      nc, syncwait$
