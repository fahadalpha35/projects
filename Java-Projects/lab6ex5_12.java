package lab6assignment; // program executes class file into Basic Programming Concepts Assignment folder.

import java.io.*;

public class lab6ex5_12 
{
	
	// main method begins execution of java application
	public static void main(String[] args)throws IOException 
	{
		
	       BufferedReader in = new BufferedReader(new InputStreamReader(System.in));

	       int total=1;
	       
	       for(int x=3;x<=20;x+=2)
	       {
	           total=total*x;  
	       }
	       
	        System.out.print("Product of odd integers is: "+total);
	        
	 } // end main method

} // end class lab6ex5_12
