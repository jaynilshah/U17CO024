
%{
int identi = 0;
int consta =0;
int key = 0;
%}
identif [_a-zA-Z][_a-zA-Z0-9]{0,30}
consta [0-9]+
keyword  "float"|"int"|"long"|"short"|"double"
dead .*
%%
{consta} {printf("Constant");}
{keyword} {printf("Keyword");}
{identif} {printf("Identifier");}
{dead} { printf("Nothing");}
%%

int yywrap(){}
int main()
{
	yylex();
	return 0;
}
