.area _CODE

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
