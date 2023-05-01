package lab6assignment; // program executes class file into Basic Programming Concepts Assignment folder.

import java.util.Scanner; // program uses class Scanner

public class lab6ex4_30 
{
	
	// main method begins execution of java application
	public static void main( String[] args )
	{
		
		// Scanner = new Scanner( System.in );
		Scanner input = new Scanner( System.in );
	
		int digit; // enter 5 digits
	
		System.out.print( "Please enter a 5 digit number \n" ); 
		digit = input.nextInt();
		
		while (digit < 10000 || digit > 99999) 
			{ 
				System.out.printf("Please enter a 5 digit number only \n"); 
				System.out.print( "Enter a 5 digit number \n " ); 
				digit = input.nextInt();
			}
	
		if ( digit % 10 / 1 == digit % 100000 / 10000 ) 
			{
				if ( digit % 100 / 10 == digit % 10000 / 1000 )
				System.out.printf( "Your number is a palindrome." );
				else
				System.out.printf( "Your number is not a palindrome." );
			}
		
		else
		System.out.printf( "Your number is not a palindrome." );
	
	} // end main method

} // end class lab6ex4_30
