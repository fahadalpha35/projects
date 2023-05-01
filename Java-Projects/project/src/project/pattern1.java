package project;

public class pattern1 {
	public static void main(String args[])   
	{   
		//i for rows and j for columns      
		//row denotes the number of rows you want to print  
		int a, b, row=4;   
		//outer loop for rows  
		for(a=0; a<row; a++)   
		{   
			//inner loop for columns  
			for(b=0; b<=a; b++)   
			{   
				//prints stars   
				System.out.print("* ");   
			}   
			//throws the cursor in a new line after printing each line  
			System.out.println();   
		}   
	}   
}
