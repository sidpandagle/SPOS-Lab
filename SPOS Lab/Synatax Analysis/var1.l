%{
#include<stdio.h>
void yyerror(char *);
#include "y.tab.h"
%}
%%
void|int|float|char return BUILTIN;
, return COMMA;
; return SC;
"\n" return NL;
")" return RP;
"(" return LP;
[a-zA-Z0-9]* return ID;
%%

int yywrap(void) {
return 1;
}
