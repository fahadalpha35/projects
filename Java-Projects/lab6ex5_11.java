package lab6assignment; // program executes class file into Basic Programming Concepts Assignment folder.

import java.util.Scanner; // program uses class Scanner

public class lab6ex5_11 
{
	
	// main method begins execution of java application
	public static void main( String[] args )
	{

	    Scanner input = new Scanner(System.in); //create object to obtain input
	
		int counter;
        int smallest = Integer.MAX_VALUE; //stores smallest integer
        int initialValue = 0;
        int number = 0;

		System.out.print("Please enter an integer: ");
        initialValue = input.nextInt();

	    for(counter = 0;counter <= initialValue;counter++)
           {

		      System.out.print("Please enter an integer: ");
              number = input.nextInt();

		      if(number < smallest)
		       {
		         smallest = number;
		       }

		    } //end for

	     System.out.printf("The smallest integer is: %d\n", smallest);
		 
	 } // end main method
		 
} // end class lab6ex5_11
