%{
#include <stdio.h>

%}

%%
[+-]?[0-9]+(\.[0-9]+)?[+-][0-9]+(\.[0-9]+)?i   { printf("Número complejo: %s\n", yytext); }
[+-]?[0-9]+(\.[0-9]+)?i                         { printf("Número imaginario puro: %s\n", yytext); }
[+-]?[0-9]+(\.[0-9]+)?                          { printf("Número real: %s\n", yytext); }
i                                               { printf("Número imaginario puro: i\n"); }
.                                               { printf("Carácter desconocido: %s\n", yytext); }

%%

int main() {
    printf("Ingrese números complejos:\n");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
