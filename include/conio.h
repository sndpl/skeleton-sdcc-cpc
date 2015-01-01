#ifndef __conio_h__
#define __conio_h__

/**
 * Determine whether a key was pressed
 */
char kbhit(void);

/**
 * Read character from console, without output
 */
char getch(void);

/**
 * Clear screen and reset cursor position
 */
void clrscr(void);

/**
 * Write character to console
 */
void putch(unsigned char c);

/**
 * Write string to console
 */
void cputs(const char* s);

#endif
