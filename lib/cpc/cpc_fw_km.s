.area _CODE

; -----------------------------------------------------------------------------
; char CPC_FW_WaitKey(void)
; -----------------------------------------------------------------------------

.globl _CPC_FW_WaitKey

_CPC_FW_WaitKey:
    call    0xBB18
    ld      l, a
    ret