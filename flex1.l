%{
#include <stdio.h>
%}

%%
"if"            { printf("KEYWORD: if\n"); }
"else"          { printf("KEYWORD: else\n"); }
[0-9]+          { printf("NUMBER: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]*   { printf("IDENTIFIER: %s\n", yytext); }
[ \t\n]+        ; // skip whitespace
.               { printf("UNKNOWN: %s\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
