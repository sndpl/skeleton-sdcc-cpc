#include <conio.h>
#include <cpc/cpc.h>

void main()
{
    CPC_SetMode(2);
    CPC_SetBorder(CPC_COLOR_BLACK);
    CPC_SetInk(0, CPC_COLOR_BLACK);
    CPC_SetInk(1, CPC_COLOR_BRIGHT_WHITE);
    CPC_SetPen(0);
    CPC_SetPaper(1);

    cputs("HELLO WORLD");
    getch();
}
