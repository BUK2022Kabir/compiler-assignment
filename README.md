# compiler-assignment
Lexical analyzer project for Compiler Construction course using Flex and C.

## What this project does
Lexical analyzer written in Flex and C.

## Files
- flex1.l → Lexer source code
- test.txt and test2.txt → Input test cases
- lex.yy.c → Generated C file by Flex
- flex1.exe → Compiled executable

## How to build (if you want to rebuild)

Below is the flex1.l file code
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
