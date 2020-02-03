%{
	int cnt_char = 0;
	
%}
%%
[$] { return 0;}
([a-z]) {printf("%c", yytext[0] - 32);}
([A-Z]) {printf("%c", yytext[0] + 32);}
. 	{} 
%%

int yywrap(){}

int main()
{
	yylex();
	return 0;
}




