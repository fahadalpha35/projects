/* Java Programming Tutorials #6
 * For Loops and a Factorial Calculator
 */

import java.util.Scanner;

public class ForLoops 
{

    public static void main(String[] args)
    {
    	
    	int start, finish, answer = 1;
    	Scanner input = new Scanner(System.in);
    	
    	System.out.println("Please enter the starting number for the factorial you would like to perform.");
    	start = input.nextInt();
    	
    	System.out.println("Please enter the ending number for the factorial you would like to perform.");
    	finish = input.nextInt();
    	
    	for(int x = start; x <= finish; x++)
    	{
    		answer *= x;
    		// answer = answer * x;
    	}
    	
    	System.out.println("The factorial of " + start + " to " + finish + "is; " + answer + ".");
    	
    }
    
    
}