#include <stdio.h>
#include <stdlib.h>

int main()
{
    int m, j, temp;
    int arr[100];

      printf("Enter number of Random Numbers:\n");
        scanf("%d", &m);

        int i;

        printf("The random numbers are:\n");

        for(i = 0; i < m; i++)
        {
            array[i] = (rand() % 100)+1;
            printf("%4d\n", array[i]);
        }

        for (i = 1 ; i <= m - 1; i++)
        {
            j = i;
            while ( j > 0 && arr[j-1] > arr[j])
            {
                temp     = arr[j];
                arr[j]   = arr[j-1];
                arr[j-1] = temp;
                j--;
            }
        }
    printf("Sorted list in ascending order:\n");
    for (i = 0; i <= m - 1; i++)
    {
        printf("%d\n", arr[i]);
    }


    return 0;
}
