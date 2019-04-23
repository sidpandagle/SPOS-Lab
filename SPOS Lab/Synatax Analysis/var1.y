%{
#include<stdio.h>
int yylex(void);
void yyerror(char *);
%}
%token COMMA ID BUILTIN SC NL RP LP
%%
var:FUNCT SC NL {printf("VAlid declaration");}
|
;
FUNCT: FUNCT COMMA ID|FUNCT COMMA BUILTIN|BUILTIN ID|LP FUNCT RP|ID
;
%%


int main(){ yyparse(); return 0;}
void yyerror(char *s) 
{
printf(" ");
}
