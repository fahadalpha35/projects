#include <stdio.h>
#include <stdlib.h>
int main() {
  int c ,n, m, i, j, temp;

  printf("Enter number of Random Numbers:\n");
    scanf("%d", &m);

  int arr[m];

  printf("The random numbers are:\n");

  for (c = 1; c <= m; i++) {
    m = rand() % 100 + 1;
    printf("%d\n", m);
  }


  for (i = 1 ; i <= m - 1; i++)
    {      {

            j = i;
            while ( j > 0 && arr[j-1] > arr[j])
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
