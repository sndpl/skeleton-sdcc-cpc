#ifndef __cpc_cpc_gfx_h__
#define __cpc_cpc_gfx_h__

#include "defines.h"

/**
 * Move to position x, y
 */
void CPC_GFX_Move(int x, int y);

/**
 * Draw line from current position to x, y
 */
void CPC_GFX_Draw(int x, int y);

/**
 * Wait for v-sync
 */
void CPC_GFX_VSync(void);

#endif
