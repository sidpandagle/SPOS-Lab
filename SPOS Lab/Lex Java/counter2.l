%{
#include<stdio.h>
%}

%%

"++"|"--" {printf("\nincrement or decrement:%s",yytext);}

import+" "+[a-zA-Z]*.+[a-zA-Z]*.+[a-zA-Z]*.+[a-zA-Z]*. {printf("\nit is a package:%s",yytext);}
"class" { printf("\n start of program:%s",yytext);}
do|while|switch|for { printf("\n loop statement:%s",yytext);}
"System.out.println"|"System.out.print" {printf("\nprint statement:%s",yytext);}
if|else {printf("\n loops:%s",yytext);}
void|int {printf("\n it is return type:%s",yytext);}
"scanner" {printf("\n this  is  package:%s",yytext);}
try|catch {printf("\n exception handlers:%s",yytext);}
main {printf("\n name of class:%s",yytext);}
int|void|boolean|float|double {printf("\nthis are keywords:%s",yytext);}
private|public|protected {printf("\nspecifier:%s",yytext);}
"+"|"-"|"/"|"*"|"=" {printf("\nOperators:%s",yytext);}
[0-9]* { printf("\nNumber:%s",yytext);}
"("|")"|"{"|";"|"}" { printf("\n puntuation symbol:%s",yytext);}
[a-zA-Z]+\_+[0-9A-Za-z]+ {printf("\nIdentifier:%s",yytext);}
"*/"

"//"[a-zA-Z0-9!@#.,:$%^&*()_+]*|"/*"[a-zA-Z0-9!@#$%^&*()_+]*"*/" {printf("\n%s is comment",yytext);}
[a-zA-Z]+[_a-zA-Z0-9]* {printf("\nVariable:%s",yytext);}

%%

int main()
{
 yyin= fopen("jk1.txt","r");

yylex();




return 0;
}

int yywrap()
{
return 1;
}


