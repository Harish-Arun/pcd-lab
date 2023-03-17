%{
    #include<stdio.h>
    int vow=0,let=0,dig=0,space=0;
%}

%%
[aeiouAEIOU] vow++;let++;
[0-9] dig++;
[A-Za-z] let++;
" " space++;
";" printf("Vowels %d Digits %d Letters %d Space %d",vow,dig,let,space);
%%

int main(){
    yylex();
    return 0;
}

int yywrap(){
    return 0;
}
