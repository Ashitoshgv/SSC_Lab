%{
#include<stdio.h>
int v=0,op=0,id=0,flag=0;
%}
%%
[a-zA-Z]+[0-9A-Za-z]* {id++;}
[0-9]+ {id++;}
[\+\-\*/\=] {op++;}
"(" {v++;}
")" {v--;}
";" {flag=1;}
.|\n {return 0;}
%%

int main()
{
printf("Enter the Expression:");
yylex();
if((op+1)==id && v==0 && flag==0)
{
printf("\n Expression is valid\n");
printf("No of identifier = %d \n no of Operator = %d \n",id,op);
}
else
printf("\n Expression is invalid\n");
return 0;
}

