#ifndef __cpc_cpc_fw_h__
#define __cpc_cpc_fw_h__

/**
 * Set screen mode 0 .. 2
 */
void CPC_FW_SetMode(char m);

/**
 * Set screen border color 0 .. 26
 */
void CPC_FW_SetBorder(unsigned char c);

/**
 * Set color 0 .. 26 for given pen
 */
void CPC_FW_SetInk(unsigned char p, unsigned char c);

/**
 * Set pen (text foreground color)
 */
void CPC_FW_SetPen(unsigned char p);

/**
 * Set paper (text background color)
 */
void CPC_FW_SetPaper(unsigned char p);

#endif
