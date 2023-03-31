%{
    #include<stdio.h>
    #include<ctype.h>
    #include<stdlib.h>
    #include<string.h>
    #define YYSTYPE double
%}

%token num
%left '+' '-'
%left '*' '/'

%%
st: st expr '\n'{printf("The given expression is Valid ");}
|st '\n'
|
|error '\n' {printf("The given expresion is invalid ");}
;

expr: num
|expr '+' expr
|expr '/' expr
;
%%

int main(){
    printf("Enter the expression to be validated: ");
    yyparse();
    return 0;
}
int yylex(){
    int ch;
    while((ch=getchar())==' ');
    if(isdigit(ch)|ch=='.')
    {
        ungetc(ch,stdin);
        scanf("%lf",&yylval);
        return num;
    }
    return ch;
}

void yyerror(char *s){
    printf("%s",s);
}