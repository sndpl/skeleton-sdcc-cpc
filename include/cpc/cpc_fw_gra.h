#ifndef __cpc_cpc_fw_gra_h__
#define __cpc_cpc_fw_gra_h__

/**
 * Move graphics cursor to position x, y
 */
void CPC_FW_Move(int x, int y);

/**
 * Draw line from current position to x, y
 */
void CPC_FW_Draw(int x, int y);

#endif
