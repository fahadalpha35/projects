/* Java Programming Tutorials #4
 * If and Else Statements adding to the calculator
 */

import java.util.Scanner;

public class IfStatements 
{

    public static void main(String[] args)
    {
    	
    	float a, b, c;
    	int d;
    	Scanner input = new Scanner(System.in);
    	
    	System.out.println("Please enter the first value.");
    	a= input.nextFloat();
    	
    	System.out.println("Please enter the secont value.");
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
    	
    }
    
    
}