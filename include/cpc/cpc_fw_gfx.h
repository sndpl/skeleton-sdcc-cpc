#ifndef __cpc_cpc_fw_gfx_h__
#define __cpc_cpc_fw_gfx_h__

/**
 * Move to position x, y
 */
void CPC_FW_GFX_Move(int x, int y);

/**
 * Draw line from current position to x, y
 */
void CPC_FW_GFX_Draw(int x, int y);

/**
 * Wait for v-sync
 */
void CPC_FW_GFX_VSync(void);

#endif
