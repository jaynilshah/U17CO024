
%{
#include<stdio.h>
int p=0,n=0,z=0;
%}
%%
[-]?[+]?[0]+([.][0]+)? { z=z+1; }
[-][0-9]+([.][0-9]+)? { n=n+1; }
[+]?[0-9]+([.][0-9]+)? { p=p+1; }
%%

int yywrap(){}
int main()
{
yylex();
printf("Negatives are: %d\n",n);
printf("Positives are: %d\n",p);
printf("Zeroes are: %d\n",z);
return 0;
}         
          
