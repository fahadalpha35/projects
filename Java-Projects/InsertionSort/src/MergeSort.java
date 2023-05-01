import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Arrays;

public class MergeSort {
	static void merge(int[] array,int start,int middle,int end)
	{
		int i,j,k;
		int[] temp=new int[end-start+1];
		i=start;
		j=middle+1;
		k=0;
		
		while(i<=middle && j<=end)
		{
			if(array[i]<=array[j])
			{
				temp[k]=array[i];
				i++;
			}
			else
			{
				temp[k]=array[j];
				j++;
			}
			k++;
		}
		
		if(i>middle)
		{
			while(j<=end)
			{
				temp[k]=array[j];
				j++;
				k++;
			}
		}
		else
		{
			while(i<=middle)
			{
				temp[k]=array[i];
				i++;
				k++;
			}
		}
		k=0;
		for(i=start;i<=end;i++)
		{
			array[i]=temp[k];
			k++;
		}
	}
	
	static void mergeSort(int[] array,int start, int end)
	{
	if(end-start+1>1)
	{
		int middle=(start+end)/2;
		mergeSort(array,start,middle);
		mergeSort(array,middle+1,end);
		merge(array,start,middle,end);
	}
}


	public static void main(String[] args) {
		int[] array=new int[100000];
		
		for (int i = 0; i < array.length; i++) {
			array[i]= (int)(Math.random()*1000);
		}
        System.out.println("The initial array is:\n");
        System.out.println(Arrays.toString(array));
        mergeSort(array,0,array.length-1);
        System.out.println("The sorted array is:\n");
        System.out.println(Arrays.toString(array));
		
	}

}
