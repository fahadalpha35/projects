#include<bits/stdc++.h>
using namespace std;

#define CHAIN_LENGTH 53
#define M 128

struct symbol_info{
    char *name;
    char *classtype;
    struct symbol_info *next;
} *block[CHAIN_LENGTH];

int cHash(char* name){
    int idx = 0;
    for(int i = 0; name[i]; ++i){
        idx = idx + name[i];
    }
    return (idx % CHAIN_LENGTH);
}

void cInsert(char* name, char* classtype){
    int pos = cHash(name);

    if( block[pos] == NULL ){
        block[pos] = new symbol_info();
        block[pos]->name = name;
        block[pos]->classtype = classtype;
        block[pos]->next = NULL;
    }
    else{
        symbol_info* newNode = new symbol_info();
        newNode->name = name;
        newNode->classtype = classtype;

        symbol_info* nextNode = block[pos];
        block[pos] = newNode;
        newNode->next = nextNode;
    }
}

bool cSearch(char* name, char* classtype){

    int pos = cHash(name);

    symbol_info* temp = block[pos];

    while( temp != NULL ){
        if( !strcmp( temp->name, name ) && !strcmp( temp->classtype, classtype ) ){
            return true;
        }
        temp = temp->next;
    }

    return false;
}

void cDelete(char* name, char* classtype){
    int pos = cHash(name);

    symbol_info* temp = block[pos];
    if(temp == NULL) return;

    if( temp->next == NULL && !strcmp( temp->name, name ) && !strcmp( temp->classtype, classtype ) ){
        block[pos] = NULL;
    }

    else if( !strcmp( temp->name, name ) && !strcmp( temp->classtype, classtype ) ){
        block[pos] = temp->next;
    }
    else{

        while( temp->next != NULL ){
                if ( !strcmp( temp->next->name, name ) && !strcmp( temp->next->classtype, classtype ) ){
                    printf("FOUND IT %s : %s\n", temp->name, temp->classtype );
                    break;
                }
            temp = temp->next;
        }



        if( temp != NULL ){
            symbol_info* found = temp->next;
            temp->next = found->next;
            delete(found);
        }


    }
}

void cUpdate(char* name, char* classtype, char* updatedClasstype){
    int pos = cHash(name);

    symbol_info* temp = block[pos];

    while( temp != NULL ){
        if( !strcmp( temp->name, name ) && !strcmp( temp->classtype, classtype ) ){
            temp->classtype = updatedClasstype;
            return;
        }
        temp = temp->next;
    }
}

void showSymbolTable(){

    for(int i = 0; i < CHAIN_LENGTH; ++i){
        printf("%d:", i);

        symbol_info* temp = block[i];

        while( temp != NULL ){
            printf("->[%s|%s]", temp->name, temp->classtype);
            temp = temp->next;
        }

        printf("\n");
    }
}

int showMenu(){
    cout << "Menu:\n";
    cout << "=====\n";

    string message = "Enter 1 to insert(name, class type)\n"
                     "Enter 2 to update(name, class type, new class type)\n"
                     "Enter 3 to search(name, class type)\n"
                     "Enter 4 to delete(name, class type)\n"
                     "Enter 5 to show the symbol table\n";

    cout << message << "\n";


    cout << "User Choice: ";
    int choice;
    scanf("%d", &choice);


    return choice;
}

int main(){

    int choice = showMenu();
    while( 1 ){

        char *name = new char[M];
        char *classtype = new char[M];


        switch(choice){
        case 1:
            {
                cout << "Insert Selected:\n";
                scanf("%s%s", name, classtype);

                int pos = strlen(name) - 1;
                if( name[ pos ] == ',' ){
                    name[ pos ] = '\0';
                }

                printf("%s %s\n", name, classtype);
                printf("%d\n", cHash(name) );
                cInsert(name, classtype);
            }
            break;
        case 2:
            {
                cout << "Update Selected:\n";
                char* updatedClasstype = new char[M];
                scanf("%s%s%s", name, classtype, updatedClasstype);

                int pos = strlen(name) - 1;
                if( name[ pos ] == ',' ){
                    name[ pos ] = '\0';
                }
                pos = strlen(classtype) - 1;
                if( classtype[ pos ] == ',' ){
                    classtype[ pos ] = '\0';
                }

                printf("%s %s\n", name, classtype);
                printf("%d\n", cHash(name) );
                cUpdate(name, classtype, updatedClasstype);
            }
            break;
        case 3:
            {
                cout << "Search Selected:\n";

                scanf("%s%s", name, classtype);

                int pos = strlen(name) - 1;
                if( name[ pos ] == ',' ){
                    name[ pos ] = '\0';
                }

                printf("%s %s\n", name, classtype);
                printf("%d\n", cHash(name) );

                if( cSearch(name, classtype) ){
                    printf("FOUND\n");
                }else{
                    printf("NOT FOUND\n");
                }
            }
            break;
        case 4:
            {
                cout << "Delete Selected:\n";
                scanf("%s%s", name, classtype);

                int pos = strlen(name) - 1;
                if( name[ pos ] == ',' ){
                    name[ pos ] = '\0';
                }

                printf("%s %s\n", name, classtype);
                printf("%d\n", cHash(name) );

                cDelete(name, classtype);
            }
            break;
        case 5:
            cout << "Show Selected\n";
            showSymbolTable();
            break;
        default:
            return 0;
        };

        choice = showMenu();
    }



    return 0;
}
