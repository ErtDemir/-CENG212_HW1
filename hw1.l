%{
#include<stdio.h>
#include<stdlib.h>
#include "hw1.tab.h"
%}
%%
"("              { printf("\nLook Ahead:\'%s\':\t\t\t",yytext);return OPEN_BRKTS; }
")"              { printf("\nLook Ahead:\'%s\':\t\t\t",yytext);return CLOSE_BRKTS; }
"["             {printf("\nLook Ahead:\'%s\':\t\t\t",yytext);return OPEN_SQUARE_BRKTS;}
"]"             {printf("\nLook Ahead:\'%s\':\t\t\t",yytext);return CLOSE_SQUARE_BRKTS;}
[ \t\n]+		{ ;}
.     			{ printf("\n UNEXPECTED CHARACTER :\'%s\':\t\t\t",yytext);;}
%%
int yywrap(void){
    return 0;
}