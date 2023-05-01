import java.util.Scanner;

public class InsertionSort {

	public static void main(String[] args) 
	{
		Scanner input = new Scanner(System.in);
		
		System.out.println("Enter number of random numbers:\n");
		int m = input.nextInt();
		
		int[] randNumbers=new int[m];
		
		for (int i = 0; i < randNumbers.length; i++) {
			randNumbers[i]= (int)(Math.random()*100);
		}

		System.out.println("Generate random:");
		for (int i = 0; i < randNumbers.length; i++) {
			System.out.println(randNumbers[i]);
		}

		int temp,j;
		for(int i=1;i<randNumbers.length;i++)
		{
			temp=randNumbers[i];
			j=i;
			while(j>0 && randNumbers[j-1]>temp)
			{
				randNumbers[j]=randNumbers[j-1];
				j=j-1;
			}
			randNumbers[j]=temp;
		}

		System.out.println("After sort: ");
		for(int i=0;i<randNumbers.length;i++)
		{
			System.out.println(randNumbers[i] + " ");
		}
		
		

	}

}
