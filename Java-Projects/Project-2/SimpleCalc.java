/* Java Programming Tutorial #2
 * Variables and a simple adition calculator
 */

import java.util.Scanner;

public class SimpleCalc 
{

    public static void main(String[] args) 
    {
    	
    	float a = 0;
    	float b = 0;
    	float c = 0;

    	
    	String a = "This is a string";
    	
    	Scanner input = new Scanner(System.in);
    	
    	System.out.println("Please enter the value you would like for A.");
    	a = input.nextFloat();
    	
    	System.out.println("Please enter the value you would like for B.");
    	b = input.nextFloat();
    	
    	
    	c = a + b;
    	
    	System.out.println("The sum of your two numbers is: " + c);
    	
    }
    
    
}