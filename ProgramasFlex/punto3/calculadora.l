%{
#include <stdio.h>
%}

%%

[0-9]+      { printf("NUMBER = %s\n", yytext); }
"+"         { printf("ADD = %s\n", yytext); }
"-"         { printf("SUB = %s\n", yytext); }
"*"         { printf("MUL = %s\n", yytext); }
"/"         { printf("DIV = %s\n", yytext); }
"|"         { printf("ABS = %s\n", yytext); }
"\n"        { printf("EOL = fin de línea\n"); }
.           { printf("%s = token no reconocible\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}