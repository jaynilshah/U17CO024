#include <graphics.h>
 

int main()
{
   int i, j = 0, gd = DETECT, gm;
 
   initgraph(&gd,&gm, "");
	for(i=0;i<200;i++){
   	
	rectangle(50+i,200,250+i,150);
	line(70+i,150,90+i,100);
	line(90+i,100,210+i,100);
	line(110+i,100,230+i,150);
	delay(100);
	cleardevice();
}
delay(100);
   closegraph();
   return 0;
}
