%{
    #include<stdio.h>
    #include<ctype.h>
%}

%token let dig

%%
sad: let recld '\n' {printf("accepted\n");exit(0);}
|let '\n' {printf("accepted\n");exit(0);}
|
|error {yyerror("rejected\n");exit(0);}
;

recld: let recld
|dig recld
|let
|dig
;
%%
int yylex(){
    char ch;
    while((ch=getchar())==' ');
    if(isalpha(ch))
        return let;
    if(isdigit(ch))
        return dig;
    return ch;
}
void yyerror(char *s){
    printf("%s",s);
}
int main(){
    printf("Enter a variable : ");
    yyparse();
}