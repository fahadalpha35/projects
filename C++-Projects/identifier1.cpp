//illustrating how to check whether
//a string is valid identifier or not.
#include <bits/stdc++.h>
using namespace std;

int main()

{

string s;
int c=0,flagv;

cout<<"enter any string: ";
cin>>s;  //input any string

//check whether it is a valid identifier or not
if( (s[0]>='a'&&s[0]<='z')
    ||
    (s[0]>='A'&&s[0]<='Z')
    ||
    (s[0]=='_') )
 {
   for(int i=1;i<s.length();i++)
   {

     if((s[i]>='a'&& s[i]<='z')
     ||
       (s[i]>='A' && s[i]<='Z')
     ||
     (s[i]>='0'&& s[i]<='9')

     ||

     (s[i]=='_') )

     {
 c++;

     }  }

    if(c==s.length())

    {

      flagv=0;

    }
 }

 else

 {

  flagv=1;

 }

//if flagv=1 then string is not a valid identifier

if(flagv==1)

 cout<<s<<"is not valid identifier";

//otherwise string is a valid identifier

else

 cout<<s<<" is valid identifier";

return 0;
}
