/* Java Programming Tutorials #7
 * Do-While Loops and adding to the Factorial Calculator
 */

import java.util.Scanner;

public class DoWhileLoops 
{

    public static void main(String[] args)
    {
    	
    	int start, finish, answer = 1, boolCheck;
    	boolean doAgain = true;
    	Scanner input = new Scanner(System.in);
    	
    	do
	    	{
	    	
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
		    	
		    	System.out.println("Would you like to run another factorial? (1 = Y, 2 = N)");
		    	boolCheck = input.nextInt();
		    	
		    	if(boolCheck == 1)
		    	{
		    		doAgain = true;
		    	}
		    	
		    	else
		    	{
		    		doAgain = false;
		    	}
		    	
	    	}while(doAgain == true);
    	
    }
    
    
}