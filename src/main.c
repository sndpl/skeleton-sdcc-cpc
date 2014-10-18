#include <conio.h>
#include <cpc.h>

void main()
{
    CPC_SetMode(2);
    CPC_SetBorder(0);

    cputs("HELLO WORLD");
    getch();
}
