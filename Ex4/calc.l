%{
#include "y.tab.h"
#include<math.h>
%}

%%
([0-9]+([0-9]*\.[0-9]+)([eE][-+]?[0-9]+)?) {yylval.dval=atof(yytext);
return NUMBER;}
log|LOG {return LOG;}
In {return nLOG;}
sin|SIN {return SINE;}
cos|COS {return COS;}
tan|TAN {return TAN;}
mem {return MEM;}
[\t];
\$ {return 0;}
\n return yytext[0];
%%

int main(){
    yylex();
    return 0;
}
int yywrap(){
    return 0;
}
