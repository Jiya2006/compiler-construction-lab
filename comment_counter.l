%{
#include <stdio.h>

int count = 0;
%}

%%
"//".*      { count++; }
.|\n        { }
%%

int main()
{
    printf("Enter C code:\n");
    yylex();

    printf("Frequency of single-line comments: %d\n", count);

    return 0;
}

int yywrap()
{
    return 1;
}