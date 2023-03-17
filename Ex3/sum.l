%{
    #include<stdio.h>
    int a,b,c;
%}

%%
"a" printf("enter the value of a ");scanf("%d",&a);
"b" printf("enter the value of b ");scanf("%d",&b);
"sum" printf("the addition of %d ,%d is %d ",a,b,c=a+b);
"exit" exit(0);
%%
int main()
{
    yylex();
    return 0;
}

int yywrap(){
    return 0;
}