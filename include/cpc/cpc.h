#ifndef __cpc_cpc_h__
#define __cpc_cpc_h__

#include <cpc/defines.h>

/**
 * Set screen mode 0 .. 2
 */
void CPC_SetMode(char m);

/**
 * Set screen border color 0 .. 26
 */
void CPC_SetBorder(unsigned char c);

/**
 * Set color 0 .. 26 for given pen
 */
void CPC_SetInk(unsigned char p, unsigned char c);

/**
 * Set pen (text foreground color)
 */
void CPC_SetPen(unsigned char p);

/**
 * Set paper (text background color)
 */
void CPC_SetPaper(unsigned char p);

#endif
