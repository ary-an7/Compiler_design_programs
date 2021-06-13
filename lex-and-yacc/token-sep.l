%{
	
%}

%% 
int|float|char|double|void printf("%s ----datatype\n",yytext);

[0-9]+ printf("%s ----integer\n",yytext);

[a-z]+[()] printf("%s ----function\n",yytext);

[a-z]+ printf("%s ----identifier\n",yytext);

[+=*/-] printf("%s ----operator\n",yytext);

; printf("%s ----delimiter\n",yytext);

, printf("%s ----separator\n",yytext);

[#][a-z\.h]+ printf("%s ----preprocessor dir\n",yytext);
%%

int yywrap(void)
{
	return 1;
}

int main()
{
	printf("Type your code here: ");
	yylex();
	return 0;
}
