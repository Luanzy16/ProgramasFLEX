%{
#include <stdio.h>
%}

%%

[0-9]+      { printf("258 = %s\n", yytext); }
"+"         { printf("259\n"); }
"-"         { printf("260\n"); }
"*"         { printf("261\n"); }
"/"         { printf("262\n"); }
"|"         { printf("263\n"); }
"\n"        { printf("264 = fin de línea\n"); }
.           { printf("%s = token no reconocible\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}