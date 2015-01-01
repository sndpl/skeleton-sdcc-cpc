#include <conio.h>

#include <cpc/cpc_fw_km.h>
#include <cpc/cpc_fw_scr.h>
#include <cpc/cpc_fw_txt.h>

void main()
{
    unsigned char c = 0;
    unsigned char done = 0;

    CPC_FW_SetMode(2);
    CPC_FW_SetBorder(CPC_COLOR_BLACK);
    CPC_FW_SetInk(0, CPC_COLOR_BLACK);
    CPC_FW_SetInk(1, CPC_COLOR_BRIGHT_WHITE);
    CPC_FW_SetPen(1);
    CPC_FW_SetPaper(0);

    cputs("HELLO WORLD > ");

    while(done == 0)
    {
        c = CPC_FW_WaitKey();

        if (c == 13)
        {
            done = 1;
        }
        else
        {
            putch(c);
        }
    }
}
