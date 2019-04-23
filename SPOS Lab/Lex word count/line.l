

%{
int line=0,word=0,ch=0,space=0;
%}
%%
\n {line++;}
[^ \t\n]+ {word++;ch=ch+yyleng;}
[ ]+ {space++;}
%%
int main(int argc,char **argv)
{
FILE *fp;
fp=fopen(argv[1],"r");
yyin=fp;
yylex();
printf("\nno of lines %d",line);
printf("\nno of words %d",word);
printf("\nno of characters %d",ch);
printf("\nno of spaces %d",space);
}
int yywrap()
{
 return 1;
}






/*
OUTPUT:
jameer@ubuntu:~$ lex exp1/exp.l
jameer@ubuntu:~$ gcc lex.yy.c
jameer@ubuntu:~$ ./a.out exp1/a1.txt

no of lines 10
no of words 19
no of characters 137	
no of spaces 9
jameer@ubuntu:~$
*/

