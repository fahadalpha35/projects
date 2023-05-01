/*Write a C program to recognize strings under 'a*', 'a*b+', 'abb'.
Input : Enter a String: aaaabbbbb
Output: aaaabbbbb is accepted under rule 'a*b+'
Enter a string: cdgs
Output: cdgs is not recognized
*/
#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<stdlib.h>
void main(){
     char s[20],c;
     int state=0,i=0;
     //clrscr();
     printf("Enter a string:");
     gets(s); // To take string input.
     while(s[i]!='\0') {  // 's' is the total input string where 'i' keeps checking each index until it checks the last character.
            switch(state) {
                 case 0: c=s[i++]; //checking next character
                     if(c=='a') state=1;  //From Starting state, if it starts with 'a' it will go to state-1.
                     else if(c=='b') state=2; //From Starting state, if it starts with 'b' it will go to state-2.
                     else state=6; //From Starting state, if it starts with any other character it will go to state-6.
                     break;
                 case 1: c=s[i++]; //checking next character
                     if(c=='a') state=3; //From state-1, if it gets 'a' it will go to state-3.
                     else if(c=='b') state=4; //From state-1, if it gets 'b' it will go to state-4.
                     else state=6; //From state-1, if it gets any other character it will go to state-6.
                     break;
                 case 2: c=s[i++]; //checking next character
                     if(c=='a') state=6; //From state-2, if it gets 'a' it will go to state-6.
                     else if(c=='b') state=2; //From state-2, if it gets 'b' it will remain in state-2.
                     else state=6; //From state-2, if it gets any other character it will go to state-6.
                     break;
                 case 3: c=s[i++]; //checking next character
                     if(c=='a') state=3; //From state-3, if it gets 'a' it will remain in state-3.
                     else if(c=='b') state=2; //From state-3, if it gets 'b' it will go to state-2.
                     else state=6; //From state-3, if it gets any other character it will go to state-6.
                     break;
                 case 4: c=s[i++]; //checking next character
                     if(c=='a') state=6; //From state-4, if it gets 'a' it will go to state-6.
                     else if(c=='b') state=5; //From state-4, if it gets 'b' it will go to state-5.
                     else state=6; //From state-4, if it gets any other character it will go to state-6.
                     break;
                 case 5: c=s[i++]; //checking next character
                     if(c=='a') state=6; //From state-5, if it gets 'a' it will go to state-6.
                     else if(c=='b') state=2; //From state-5, if it gets 'b' it will go to state-2.
                     else state=6; //From state-5, if it gets any other character it will go to state-6.
                     break;
                 case 6: printf("\n %s is not recognised.",s); //If the first input character does start with 'a' or starts with 'a'
                        exit(0); // and contains any other character other than 'a or b' after 'a' or without 'a', it will display that it is not recognized.
        }
     }
     if (state==1 || state==3) printf("\n %s is accepted under rule 'a*'",s);
     else if((state==2)||(state==4)) printf("\n %s is accepted under rule 'a*b+'",s);
     else if(state==5) printf("\n %s is accepted under rule 'abb'",s); // State-0 to State-1 is 'a', State-1 to State-4 is 'b', State-4 to State-5 is 'b'.
     //getch();
}
