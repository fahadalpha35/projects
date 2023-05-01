#include <stdio.h>
int main()
{
    int n, i, j, temp, c;

    printf("Enter number of elements\n");
    scanf("%d", &n);

    int arr[n];

    printf("Ten random numbers in [1,100]\n");

    for (c = 1; c <= n; c++)
    {
        n = rand() % 100 + 1;
        printf("%d\n", arr[n]);
    }


    for (i = 1 ; i <= n - 1; i++)
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
    for (i = 0; i <= n - 1; i++)
    {
        printf("%d\n", arr[i]);
    }
    return 0;
}
