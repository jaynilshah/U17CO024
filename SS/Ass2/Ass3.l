
%{
#include<stdio.h>
%}
end \n
oct [0][0-7]+{end}
hex [0][x|X][0-9A-F]+
%%
{oct} printf("Ocatal");
{hex} printf("Hexadecimal");
.* printf("Incorrect");
%%

int yywrap(){}
int main()
{
yylex();
return 0;
}             