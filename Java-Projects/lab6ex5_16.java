package lab6assignment; // program executes class file into Basic Programming Concepts Assignment folder.

import java.util.Scanner; // program uses class Scanner

public class lab6ex5_16 
{
	
	// main method begins execution of java application
		public static void main( String[] args )
		{
			
			Scanner input=new Scanner(System.in);
	        int [] num=new int[5];
	        int i;
	        System.out.println("Enter the  number: ");
	        
	        for( i =0;i<5;i++)
	        {    
	            num[i]=input.nextInt();
	        }
	        
	        for( i=0;i<5;i++)
	        {
	        	
	            if(num[i]>30)
	            {
	                System.out.print("The program is can't do");
	                break;
	            }
	            
	            for(int j=1;j<=num[i];j++)
	            {
	                System.out.print("*");
	            }
	            
	            System.out.println();
	        
	        } // end for
			
		} // end main method

} // end class lab6ex5_16
