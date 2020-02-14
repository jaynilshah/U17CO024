%{
	#include<stdio.h>
	int c=0;
%}
start \/\*
end  \*\/
%%
\/\/(.*) {c++; printf("%s",yytext);  printf("Comment\n");}
{start}(.*|[\n]*)*{end}  {c++; printf("%s",yytext);  printf("Comment\n");}
[$] {return 0;}
%%


int yywrap(){}
int main()
{
extern FILE *yyin;
yyin = fopen("Input.c","r");
yylex();
printf("\nComments: %d\n",c);
return 0;
}


