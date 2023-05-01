#include<bits/stdc++.h>
using namespace std;

#define SYMBOL_TABLE_LENGTH 56
#define M 128

struct symbol_info
{
    char *name;
    char *classtype;
    struct symbol_info *next;
} *block[SYMBOL_TABLE_LENGTH];

// Hashing Function of symbol table.
int HashFunction(char* name)
{
    int idx = 0;
    for(int i = 0; name[i]; ++i)
    {
        idx = idx + name[i];
    }
    return (idx % SYMBOL_TABLE_LENGTH);
}

// Insert Function of symbol table.
void InsertFunction(char* name, char* classtype)
{
    int pos = HashFunction(name);

    if( block[pos] == NULL )
        {
            block[pos] = new symbol_info();
            block[pos]->name = name;
            block[pos]->classtype = classtype;
            block[pos]->next = NULL;
        }
    else
    {
        symbol_info* newNode = new symbol_info();
        newNode->name = name;
        newNode->classtype = classtype;

        symbol_info* nextNode = block[pos];
        block[pos] = newNode;
        newNode->next = nextNode;
    }
}

// Search function of symbol table.
bool SearchFunction(char* name, char* classtype)
{
    int pos = HashFunction(name);

    symbol_info* temp = block[pos];

    while( temp != NULL )
        {
            if( !strcmp( temp->name, name ) && !strcmp( temp->classtype, classtype ) )
            {
                return true;
            }
        temp = temp->next;
        }

    return false;
}

// Display table record of symbol table.
void showSymbolTable()
{
    for(int i = 0; i < SYMBOL_TABLE_LENGTH; ++i)
    {
        printf("%d:", i);

        symbol_info* temp = block[i];

        while( temp != NULL )
        {
            printf(" %s (%s)", temp->name, temp->classtype);
            temp = temp->next;
        }

        printf("\n");
    }
}

// Delete function of symbol table.
void DeleteFunction(char* name, char* classtype)
{
    int pos = HashFunction(name);

    symbol_info* temp = block[pos];
    if(temp == NULL) return;

    if( temp->next == NULL && !strcmp( temp->name, name ) && !strcmp( temp->classtype, classtype ) )
        {
            block[pos] = NULL;
        }

    else if( !strcmp( temp->name, name ) && !strcmp( temp->classtype, classtype ) )
        {
            block[pos] = temp->next;
        }
    else
    {

        while( temp->next != NULL )
            {
                if ( !strcmp( temp->next->name, name ) && !strcmp( temp->next->classtype, classtype ) )
                {
                    printf("FOUND IT %s : %s\n", temp->name, temp->classtype );
                    break;
                }
            temp = temp->next;
            }

        if( temp != NULL )
        {
            symbol_info* found = temp->next;
            temp->next = found->next;
            delete(found);
        }

    }
}

// Displays user options.
int showMenu()
{
    cout << "Please select your choice from (0 to 4):\n";
    cout << "=====\n";

    string message = "*Press 1 to insert a new symbol along with its type into the symbol-table\n"
                     "*Press 2 to lookup whether a given symbol already exists in the symbol-table or not\n"
                     "*Press 3 to dump the contents of the symbol table to the console\n"
                     "*Press 4 to delete a given symbol if it already exists in the symbol-table\n"
                     "*Press 0 to exit\n";

    cout << message << "\n";

    cout << "Enter Choice: ";
    int choice;
    scanf("%d", &choice);

    return choice;
}

// Main function.
int main()
{
    int choice = showMenu();
    while( 1 )
    {
        char *name = new char[M];
        char *classtype = new char[M];

        switch(choice)
        {
            case 1:
            {
                cout << "Input symbol and type to insert:\n";
                scanf("%s%s", name, classtype);

                int pos = strlen(name) - 1;
                if( name[ pos ] == ',' )
                {
                    name[ pos ] = '\0';
                }

                printf("%s (%s)\n", name, classtype);
                printf("%d\n", HashFunction(name) );
                InsertFunction(name, classtype);
                cout << "Symbol Inserted\n";
            }
            break;
            case 2:
            {
                cout << "Input symbol and type to search:\n";

                scanf("%s%s", name, classtype);

                int pos = strlen(name) - 1;
                if( name[ pos ] == ',' )
                {
                    name[ pos ] = '\0';
                }

                printf("%s (%s)\n", name, classtype);
                printf("%d\n", HashFunction(name) );

                if( SearchFunction(name, classtype) )
                {
                    printf("SYMBOL FOUND\n");
                }
                else
                {
                    printf("SYBMOL NOT FOUND\n");
                }
            }
            break;
            case 3:
                cout << "Showing the symbol table:\n";
                showSymbolTable();
            break;
            default:
                return 0;
            case 4:
            {
                cout << "Input symbol and type to delete:\n";
                scanf("%s%s", name, classtype);

                int pos = strlen(name) - 1;
                if( name[ pos ] == ',' )
                {
                    name[ pos ] = '\0';
                }

                printf("%s (%s)\n", name, classtype);
                printf("%d\n", HashFunction(name) );
                DeleteFunction(name, classtype);
                cout << "Symbol Deleted\n";
            }
            break;
            case 0:
                cout << "Exited Symbol Table\n";
                exit(1);
            break;
        };

        choice = showMenu();

    }
    return 0;
}
