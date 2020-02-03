%{
	int cnt_char = 0;
	int cnt_word = 0;
	int cnt_space = 0;
	int cnt_eol = 0;
%}

%%
[$] { return 0;}
([a-zA-Z0-9])+ {cnt_word++; cnt_char += yyleng;}
[ ]	    {cnt_space++; cnt_char++;}
\n	    {cnt_eol++; cnt_char++;}
. 	    {cnt_char++;} 
%%

int yywrap(){}

int main()
{
	yylex();
	printf("Count of chars %d", cnt_char);
	printf("\nCount of words %d", cnt_word);
	printf("\nCount of spaces %d", cnt_space);
	printf("\nCount of EOLs %d", cnt_eol);
	return 0;
}




