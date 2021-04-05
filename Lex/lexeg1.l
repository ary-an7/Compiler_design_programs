%{
#include<stdio.h>
                                                                                                                                                                                          
int id=0;
int key=0;
int word=0                                                                                                                                                                                          

%}
                                                                                                                                                                                          
numerical [0-9]
                                                                                                                                                                                          
operator [\+\=\-\*\%\/]
identifier [a-zA-Z][a-zA-Z0-9_]*
punctuation [\,\:\;\(\)\{\}]
                                                                                                                                                                                          
%%
                                                                                                                                                                                          
{numerical}+ { printf("<Numerical, %s >",yytext);word++;}
int|for|while|double|char|main|if|do { printf("<Keyword, %s >",yytext);word++;key++;}
{operator} { printf("<op, %s >",yytext);}
{identifier} {printf("<identifier, %s>",yytext);word++;id++; }
{punctuation} { printf("<punctuation, %s >",yytext);}
                                                                                                                                                                                          
%%
                                                                                                                                                                                          
int main()
{
        yylex();
        printf("<Total no of words: %d>",word);
        printf("<Total no of identifiers: %d>",id);
        printf("<Total no of keywords: %d>",key);                                                                                                                                                                                          
        yywrap();
}
                                                                                                                                                                                          
int yywrap(){
        return 1;
}
