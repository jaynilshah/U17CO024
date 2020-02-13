#include <graphics.h>
#include <math.h>
#include <stdio.h>
#define printf grprintf

void plotsym(int x,int y,int tx, int ty, int ref){
    putpixel(x + tx,y + ty,WHITE);
    putpixel(x + tx,-y + ty,GREEN);
    putpixel(-x + tx,-y + ty,WHITE);
    putpixel(-x + tx,y + ty,GREEN);
    if(ref == 1){

    putpixel(y + tx,x + ty,BLUE);
    putpixel(y + tx,-x + ty,RED);
    putpixel(-y + tx,x + ty,RED);
    putpixel(-y + tx,-x + ty,BLUE);
    }
    

}
void  circ(float x0, float y0, float r)
{
    float  pk = (float)5/4 -r,x = 0,y=r;
    plotsym(x,y,x0,y0 , 1);
    while (x<y)
    {
        if(pk<0) pk +=2*++x + 1;
        else pk += 2 * ++x + 1 - 2*--y;
        plotsym((int)x,(int)y,(int)x0,(int)y0,1);
    }
       
}

void ellip(float x0, float y0, float a, float b)
{
    float y = b,x=0,p = b*b +- a*a*y + a*a/4;
    while (b*b *x <=a*a*y)
    {
        if(p<0)p+=2*b*b*++x + b*b ;
        else p+= 2*b*b*++x + b*b - 2*a*a*--y;
        plotsym((int)x ,(int)y , (int)x0 ,(int ) y0, 0);
    }
    p = b*b*(x + 0.5)*(x + 0.5) + a*a * (y -1)*(y -1) - a*a*b*b;
    while (y>=0)
    {
        if(p>0)p += -2* a*a * --y + a*a ;
        else p += -2*a*a*--y + a*a + 2*b*b*++x;
        plotsym((int)x ,(int)y , (int)x0 ,(int ) y0, 0);    
    }
    
} 

int main()
{
    int i, j = 0, gd = DETECT, gm;
    int c = 1;

    initgraph(&gd, &gm, "");
    while (1)
    {
        puts("Enter the case \n 1) Ellipse \n 2) Circle \n 0) Exit \n ");
        fscanf(stdin, "%d", &c);
        if (c == 0)
        {
            break;
        }
        if(c ==4){
            cleardevice();
            continue;
        }

        if (c == 1)
        {
            
            int a =0;
            int b =0;
            int x =0;
            int y =0;
            fprintf(stdout, "Enter centres x , y ,  a and b in order"), fflush(stdout);
            fscanf(stdin, "%d %d", &x, &y);
            fscanf(stdin, "%d %d", &a, &b);
            ellip(x,y,a, b);
        }
        else
        {
            int r=0;
            int x =0;
            int y =0;
            fprintf(stdout, "Enter centres x and y and r in order"), fflush(stdout);
            fscanf(stdin, "%d %d", &x, &y);
            fscanf(stdin, "%d", &r);
            circ(x,y,r);
        }
    }
    // delay(1000);
    closegraph();

    return 0;
}
