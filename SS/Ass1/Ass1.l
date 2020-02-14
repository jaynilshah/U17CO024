
%{
int cnt = 0;
int cnt2 =0;
%}
vowel [aeiouAEIOU]

%%
{vowel} {cnt ++;}
[a-zA-Z] {cnt2++;}
. {}
\n {return 0;}
%%

int yywrap(){}
int main()
{
	yylex();
	printf("Vowels : %d Consonants is : %d \n",cnt, cnt2);
	return 0;
}
