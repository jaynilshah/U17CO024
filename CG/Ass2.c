#include <graphics.h>
#include <math.h>
#include <stdio.h>
#define printf grprintf

int mod(int n)
{
    return (n > 0) ? n : -1 * n;
}
void dda(float x1, float y1, float x0, float y0)
{
    float dx = x1 - x0;
    float dy = y1 - y0;
    float steps = mod(dx) > mod(dy) ? mod(dx) : mod(dy);
    float xinc = dx / (float)steps;
    float yinc = dy / (float)steps;
    int i = 0;
    float x = x0;
    float y = y0;
    for (i = 0; i <= steps; i++)
    {
        putpixel((int)(x), (int)(y), WHITE);
        x += xinc;
        y += yinc;
    }
}

void bresenham(int X0, int Y0, int X1, int Y1)
{
    int p;
    int temp;
    int dx = X1 - X0;
    int dy = Y1 - Y0;
    int mdx = mod(dx);
    int mdy = mod(dy);
    if(X0>X1){
        temp = X0;
        X0 = X1;
        X1 = temp;
        temp = Y0;
        Y0 = Y1;
        Y1 = temp;
        dx =-dx;
        dy =-dy;
    }
    if(mdx>=mdy){
        p = 2*mdy-mdx;
        while(X0<X1)
	{
		if(p>=0)
		{
			putpixel(X0,Y0,7);
            if(Y1>Y0){
			    Y0=Y0+1;
            }
            else{
                Y0 = Y0-1;
            }
			p=p+2*mdy-2*mdx;
		}
		else
		{
			putpixel(X0,Y0,7);
			p=p+2*mdy;
		}
        if(X1>X0){
		    X0=X0+1;
        }
        else{
		    X0=X0-1;
        }
	}
    }

    else {
        if(Y0>Y1){
        temp = X0;
        X0 = X1;
        X1 = temp;
        temp = Y0;
        Y0 = Y1;
        Y1 = temp;
        dx =-dx;
        dy =-dy;
    }
        p = 2*mdx-mdy;
          while(Y0<Y1)
	    {
		if(p>=0)
		{
			putpixel(X0,Y0,7);
			if(X1>X0){
                X0=X0+1;
            }
            else{
                X0 = X0-1;
            }
			p=p+2*mdx-2*mdy;
		}
		else
		{
			putpixel(X0,Y0,7);
			p=p+2*mdx;
		}
		    if(Y1>Y0){
			    Y0=Y0+1;
            }
            else{
                Y0 = Y0-1;
            }
	}
    }
} 

int main()
{
    int i, j = 0, gd = DETECT, gm;
    int c = 1;

    initgraph(&gd, &gm, "");
    while (1)
    {
        // puts(c);
        puts("Enter the case \n 1) Bresenham \n 2) DDA \n 0) Exit \n ");
        fscanf(stdin, "%d", &c);
        if (c == 0)
        {
            break;
        }
        if(c ==4){
            cleardevice();
            continue;
        }
        puts("Enter three points in order of x and y");
        int x[3];
        int y[3];
        for (i = 0; i < 3; i++)
        {
            fscanf(stdin, "%d %d", &x[i], &y[i]);
            fprintf(stdout, "(%d,%d)", x[i], y[i]), fflush(stdout);
        }
        puts("Scan completed");
        if (c == 1)
        {
            bresenham(x[0], y[0], x[1], y[1]);
            bresenham(x[1], y[1], x[2], y[2]);
            bresenham(x[2], y[2], x[0], y[0]);
            // puts("drawn");
        }
        else
        {
            dda(x[0], y[0], x[1], y[1]);
            dda(x[1], y[1], x[2], y[2]);
            dda(x[2], y[2], x[0], y[0]);
        }
    }
    // delay(1000);
    closegraph();

    return 0;
}
