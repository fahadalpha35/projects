#include<stdio.h>
#include<conio.h>
#include<string.h>
char prol[8][10]={"E","E`","E`","T","T`","T`","F","F"};
char pror[8][10]={"TE`","+TF`","@","FT`","*FT","@","(E)","id"};
char prod[8][10]={"E->TE`","E`->+TF`","E`->@","T->FT`","T`->*FT`","T`->@","F->(E)","F->id"};
char first[8][10]={"id(","+","@","(id","+@",")","(","id"};
char follow[8][10]={"$)","$)","$)","+$)","+$)","+","*+$","("};
char table[5][7][10];
numr(char c) {
    switch(c) {
         case 'E': return 0;
         case 'E`': return 1;
         case 'T': return 2;
         case 'T`': return 3;
         case 'F': return 4;
         case 'id': return 0;
         case '+': return 1;
         case '*': return 2;
         case '(': return 3;
         case ')': return 4;
          case '$': return 5;
    }
    return(2);
}

void main() {
    int i,j,k;
    //clrscr();
    for(i=0;i<6;i++)
        for(j=0;j<7;j++)
            strcpy(table[i][j]," ");
 printf("\nThe following is the predictive parsing table for the following grammar:\n");
 for(i=0;i<8;i++) printf("%s\n",prod[i]);
 printf("\nPredictive parsing table is\n");
 fflush(stdin);
 for(i=0;i<8;i++) {
     k=strlen(first[i]);
     for(j=0;j<10;j++)
        if(first[i][j]!='@')
            strcpy(table[numr(prol[i][0])+1][numr(first[i][j])+1],prod[i]);
 }
 for(i=0;i<8;i++) {
        if(strlen(pror[i])==1) {
            if(pror[i][0]=='@') {
                k=strlen(follow[i]);
                for(j=0;j<k;j++)
                    strcpy(table[numr(prol[i][0])+1][numr(follow[i][j])+1],prod[i]);
            }
        }
}


strcpy(table[0][0]," ");
strcpy(table[0][1],"id");
strcpy(table[0][2],"+");
strcpy(table[0][3],"*");
 strcpy(table[0][4],"(");
 strcpy(table[0][5],")");
 strcpy(table[0][6],"$");
 strcpy(table[1][0],"E");
 strcpy(table[2][0],"E`");
 strcpy(table[3][0],"T");
 strcpy(table[4][0],"T`");
 strcpy(table[5][0],"F");
 printf("\n-----------------------------------------------------------------------\n");
 for(i=0;i<6;i++)
    for(j=0;j<7;j++) {
        printf("%-10s",table[i][j]);
        if(j==6)
            printf("\n-----------------------------------------------------------------------\n");
    }
 getch();

}
