#ifndef __cpc_cpc_h__
#define __cpc_cpc_h__

/* color names */

#define CPC_COLOR_BLACK          0
#define CPC_COLOR_BLUE           1
#define CPC_COLOR_BRIGHT_BLUE    2
#define CPC_COLOR_RED            3
#define CPC_COLOR_MAGENTA        4
#define CPC_COLOR_MAUVE          5
#define CPC_COLOR_BRIGHT_RED     6
#define CPC_COLOR_PURPLE         7
#define CPC_COLOR_BRIGHT_MAGENTA 8
#define CPC_COLOR_GREEN          9
#define CPC_COLOR_CYAN           10
#define CPC_COLOR_SKY_BLUE       11
#define CPC_COLOR_YELLOW         12
#define CPC_COLOR_WHITE          13
#define CPC_COLOR_PASTEL_BLUE    14
#define CPC_COLOR_ORANGE         15
#define CPC_COLOR_PINK           16
#define CPC_COLOR_PASTEL_MAGENTA 17
#define CPC_COLOR_BRIGHT_GREEN   18
#define CPC_COLOR_SEA_GREEN      19
#define CPC_COLOR_BRIGHT_CYAN    20
#define CPC_COLOR_LIME           21
#define CPC_COLOR_PASTEL_GREEN   22
#define CPC_COLOR_PASTEL_CYAN    23
#define CPC_COLOR_BRIGHT_YELLOW  24
#define CPC_COLOR_PASTEL_YELLOW  25
#define CPC_COLOR_BRIGHT_WHITE   26

/* default hardware I/O ports */

__sfr __banked __at 0x07F00 IO_GateArray;
__sfr __banked __at 0x0BC00 IO_CRTC_Index;
__sfr __banked __at 0x0BD00 IO_CRTC_DataOut;
__sfr __banked __at 0x0BE00 IO_CRTC_Status;
__sfr __banked __at 0x0BF00 IO_CRTC_DataIn;
__sfr __banked __at 0x0EF00 IO_Printer;
__sfr __banked __at 0x0F400 IO_PPI_PortA;
__sfr __banked __at 0x0F500 IO_PPI_PortB;
__sfr __banked __at 0x0F600 IO_PPI_PortC;
__sfr __banked __at 0x0F700 IO_PPI_Control;
__sfr __banked __at 0x0FA7E IO_FDD_Motor;
__sfr __banked __at 0x0FB7E IO_FDC_Status;
__sfr __banked __at 0x0FB7F IO_FDC_Data;

#endif
