%{
#include <stdio.h>
#include <string.h>

const char* translate(const char* word) {
    if (strcmp(word, "computer") == 0) return "computadora";
    if (strcmp(word, "phone") == 0) return "telefono";
    if (strcmp(word, "car") == 0) return "coche";
    if (strcmp(word, "tree") == 0) return "arbol";
    if (strcmp(word, "river") == 0) return "rio";
    if (strcmp(word, "mountain") == 0) return "montaña";
    if (strcmp(word, "sun") == 0) return "sol";
    if (strcmp(word, "moon") == 0) return "luna";
    if (strcmp(word, "ocean") == 0) return "oceano";
    if (strcmp(word, "flower") == 0) return "flor";
}
%}

%%
[a-zA-Z]+    { printf("%s ", translate(yytext)); }
\n           { printf("\n"); }
.            { printf("%s", yytext); }
%%

int main(int argc, char **argv) {
    if (argc > 1) {
        FILE *file = fopen(argv[1], "r");
        if (!file) {
            perror("Error opening file");
            return 1;
        }
        yyin = file;
    }
    yylex();
    return 0;
}