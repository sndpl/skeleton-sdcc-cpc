#include <conio.h>

#include <cpc/cpc.h>
#include <cpc/cpc_defs.h>
#include <cpc/cpc_gfx.h>

void init()
{
    CPC_SetMode(2);
    CPC_SetBorder(CPC_COLOR_BLACK);
    CPC_SetInk(0, CPC_COLOR_BLACK);
    CPC_SetInk(1, CPC_COLOR_BRIGHT_WHITE);
    CPC_SetPen(0);
    CPC_SetPaper(1);
}

void main()
{
    init();

    CPC_GFX_Move(0, 381);
    CPC_GFX_Draw(87, 381);

    cputs("HELLO WORLD");
    getch();
}
