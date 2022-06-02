%{
#include<stdio.h>
#include<stdlib.h>

extern int yylex(void);
void yyerror(char *msg);

%}


%start srule
%token OPEN_BRKTS
%token CLOSE_BRKTS
%token OPEN_SQUARE_BRKTS
%token CLOSE_SQUARE_BRKTS

%%

srule:
        srule  OPEN_SQUARE_BRKTS srule CLOSE_SQUARE_BRKTS          {printf("\n\t\t\t srule -> srule [ srule ] ");}
        | srule  OPEN_BRKTS srule CLOSE_BRKTS                      {printf("\n\t\t\t srule -> srule ( srule ) ");}
        | /*empty*/                                                    {printf("\n\t\t\t srule -> e");} 
        ;
%%

int main(void){
        yyparse();
        return 0;
}
void yyerror(char *msg){
	printf("%s",msg);
	exit(1);
}
