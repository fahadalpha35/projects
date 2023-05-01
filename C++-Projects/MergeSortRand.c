#include<stdio.h>
#include<conio.h>
#include<time.h>
void mergesort(int x[],int lb,int ub);
void merge(int x[],int lb1,int ub1,int ub2);
int count=0;
void main()
{
	time_t start,end;
	int x[50];
	int n,i;
	clrscr();
	start=time(NULL);
	printf("Enter the no of elements:\n");
	scanf("%d",&n);
	printf("The unsorted list is:");
	for(i=0;i < n;i++)
	{
		x[i]=rand();
		printf("%d ", x[i]);
	}
	mergesort(x,0,n-1);
	printf("\n\nThe sorted list is\n");
	for(i=0;i < n;i++)
		printf("%d ",x[i]);
	end=time(NULL);
	printf("The time diff is:%0.10f\n",difftime(end,start));
	printf("The no of int. is %d",count);
	getch();
}

void mergesort(int x[],int lb,int ub)
{
    int mid;
    if(lb < ub)
	{
		count++;
		mid=(lb+ub)/2;
		mergesort(x,lb,mid);
		mergesort(x,mid+1,ub);
		merge(x,lb,mid,ub);
	}
}

void merge(int x[],int lb1,int ub1,int ub2)
{
	int temp[50],i,j,k;
	i=lb1;
	j=ub1+1;
	k=0;
	while(i <= ub1&&j <= ub2)
	{
		count++;
		if(x[i] < x[j])
		{
			count++;
			temp[k++]=x[i++];
		}
		else
		{
			count++;
			temp[k++]=x[j++];
		}
	}
	while(i <= ub1)
	{
		count++;
		temp[k++]=x[i++];
	}
	while(j <= ub2)
	{
		count++;
		temp[k++]=x[j++];
	}
	for(i=lb1,j=0;i <= ub2;i++,j++)
	{
		count++;
		x[i]=temp[j];
	}
}
