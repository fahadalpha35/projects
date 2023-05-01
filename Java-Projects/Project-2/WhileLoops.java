/* Java Programming Tutorials #5
 * While loops adding the final touches to the calculator
 */

import java.util.Scanner;

public class WhileLoops 
{

    public static void main(String[] args)
    {
    	
    	float a, b, c;
    	int d, e;
    	boolean doAgain = true;
    	Scanner input = new Scanner(System.in);
    	
    	while(doAgain == true)
	     {
	    	
	    	System.out.println("Please enter the first value.");
	    	a= input.nextFloat();
	    	
	    	System.out.println("Please enter the second value.");
	    	b= input.nextFloat();
	    	
	    	System.out.println("Please enter the type of function you would like to perform. (1 = +, 2 = -, 3=*,4=/)");
	    	d= input.nextInt();
	    	
	    	if(d == 1)
	    	{
	    		c = a + b;
	    		System.out.println(c);
	    	}
	    	
	    	else if(d == 2)
	    	{
	    		c = a - b;
	    		System.out.println(c);
	    	}
	    	
	    	else if(d == 3)
	    	{
	    		c = a * b;
	    		System.out.println(c);
	    	}
	    	
	    	else if(d == 4)
	    	{
	    		c = a / b;
	    		System.out.println(c);
	    	}
	    	
	    	else
	    	{
	    		System.out.println("I'm sorry, the operation you input was invalid.");
	    	}
	    	
	    	System.out.println("Would you like to do another operation? (1 = Y, 2 = N)");
	    	e = input.nextInt();
	    	
	    	if(e == 1)
	    	{
	    		deAgain = true;
	    	}
	    	
	    	else
	    	{
	    		doAgain = false;
	    	}
    	
   	    }
   	
    }
    
}