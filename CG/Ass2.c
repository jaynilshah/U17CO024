#include <graphics.h>
#include <math.h>
#include <stdio.h>
#define printf grprintf

 int abs(int n){
     return (n>0) ? n : -1 * n;
 }
void dda(float x1,float y1, float x0, float y0){
    float dx = x1 - x0;
    float dy = y1 - y0;
    float steps = abs(dx) > abs(dy) ? abs(dx) : abs(dy);
    float xinc = dx / (float)steps;
    float yinc = dy / (float)steps;
    int i =0;
    float x = x0;
    float y = y0;
    for(i=0;i<=steps;i++){
        putpixel((int)(x),(int)(y), WHITE);
        x += xinc;
        y += yinc;
    }
}

int bresenham(int x1, int y1, int x0, int y0) {
    return 0;
}

int main()
{
   int i, j = 0, gd = DETECT, gm;
    int c =1;
    
    initgraph(&gd,&gm, "");
    while (1)
    {
        // puts(c);
        puts("Enter the case \n 1) Bresenham \n 2) DDA \n 0) Exit \n ");
         fscanf(stdin, "%d",&c);
        if(c==0){
            break;
        }
        puts("Enter three points in order of x and y");
        int x[3];
        int y[3];
        for(i=0;i<3;i++){
            fscanf(stdin, "%d %d", &x[i], &y[i]);
            fprintf(stdout, "(%d,%d)", x[i], y[i]), fflush(stdout);
        }
        puts("Scan completed");
        if(c==1){

        }
        else
        {
            dda(x[0],y[0],x[1],y[1]);
            dda(x[1],y[1],x[2],y[2]);
            dda(x[2],y[2],x[0],y[0]);
        }
    }
    // delay(1000);
   closegraph();
    
   
   return 0;
}
