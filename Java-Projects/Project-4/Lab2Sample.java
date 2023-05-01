/* Basic Programming Concepts
 * Lab#2 –Types, Variables, Constant, Scanner input, DecimalFormat output.
 */

import java.text.DecimalFormat; // program uses class DecimalFormat
import java.util.Scanner; // program uses class Scanner

public class Lab2Sample 
{

    // main method begins execution of java application
    public static void main (String [ ] args ) 
    {
    	
    	// create Scanner to obtain input from command window
    	Scanner input = new Scanner (System.in);
    	
    	// format decimal with 2 digits
    	DecimalFormat twoDigits = new DecimalFormat("0.00");
    	
    	// declaring a constant PI
    	final double PI = 3.142;
    	
    	// declaring variables
    	int num1;
    	double areaCircle;
    	:
    	// getting user input
    	System.out.print(“Enter a number : “);
    	num1 = input.nextInt( );
    	:
    	// display with formatted digit
    	System.out.println (“Result = “ + twoDigits.format(areaCircle);
    	
    }// end method main
    
}// end class Lab2Sample