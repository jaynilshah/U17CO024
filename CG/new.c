#include <graphics.h>
 

int main()
{
   int i, j = 0, gd = DETECT, gm;
 
   initgraph(&gd,&gm, "");
   	rectangle(50,400,500,150);
	line(50,150,275,0);
	line(275,0,500,150);
	rectangle(200,400,350,275);
rectangle(50,400,500,150);
	delay(10000);
 
   closegraph();
   return 0;
}
