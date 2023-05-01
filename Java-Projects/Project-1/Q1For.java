/**
 * @(#)Q1For.java
 *
 *
 * @author 
 * @version 1.00 2016/9/27
 */
 
// Java core packages

   // importing a class for decimal formatting
   import java.text.DecimalFormat;
   
   // importing a class for keyboard entry
   import java.util.Scanner;

public class Q1For
{

    public static void main ( String [ ] args )
    {
    	
    	// format decimal with 2 digits
    	DecimalFormat twoDigits = new DecimalFormat("0.00");
    	
    	// create input Scanner
    	Scanner input = new Scanner(System.in);
    	
    	int total = 0;
    	int grade, i;
    	double average;
    	
    	System.out.println("Welcome to grade book for");
    	System.out.println("CTD 1202 Programming II\n\n");
    	
    	for (i = 1; i <=7; i++)
    	{
    		System.out.print("Enter grade : ");
    		grade = input.nextInt();
    		total = total + grade;
    	}
    	
    	System.out.println("\nChecking on i ....");
    	System.out.println("i = " + i);
    	average = total / ((i-1)*1.0);
    	
    	System.out.println("\n\nTotal of all "+ (i-1)+" grades is "+total);
    	System.out.println("The average is "+twoDigits.format(average));
    	
    } // end of main
    
} // end of class