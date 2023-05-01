/* Java Programming Tutorials #10
 * A brief explaination of Error Handling
 */

import java.util.Scanner;

public class ErrorHandling 
{

    public static void main(String[] args) 
    {
    	
    	int num1 = 999999, num2 = 999999, answer = 0, select = 100;
    	String verbal = "";
    	Scanner input = new Scanner(System.in);
    	
    	while(num2 == 999999 || num1 == 999999)
    	{
    		
    		try
    		{
    	
		    	System.out.println("Please enter the first variable.");
		    	num1 = input.nextInt();
		    	
		    	System.out.println("Please enter the first variable.");
		    	num2 = input.nextInt();
    	
    		}
    		
    		catch(Exception e)
    		{
    			System.out.println("Please only enter Integer values.");
    			input.nextLine();
    		}
    	
    	}
    	
    	while(select > 6 || select < 1)
    	{
    		
    		try
    		{
    		
	    		System.out.println("Please enter the type of proceedure you would like to execute. (1(add), 2(subtract), 3(multiply), 4(divide), 5(factorial), 6(remainder))");
	    		select = input.nextInt();
    		
    		}
    		
    		catch(Exception e)
    		{
    			System.out.println("Please only enter Integer values.");
    			input.nextLine();
    		}
    		
    	}
    	
    	switch(select)
    	{
    		
    		case 1: answer = addNums(num1, num2);
    		verbal = "sum";
    		break;
    		
    		case 2: answer = subNums(num1, num2);
    		verbal = "sum";
    		break;
    		
    		case 3: answer = multiNums(num1, num2);
    		verbal = "sum";
    		break;
    		
    		case 4: answer = divNums(num1, num2);
    		verbal = "sum";
    		break;
    		
    		case 5: answer = factNums(num1, num2);
    		verbal = "sum";
    		break;
    		
    		case 6: answer = modNums(num1, num2);
    		verbal = "sum";
    		break;
    		
    	}
    	
   	public static int addNums(int a, int b)
       {
    		int c;
    		c = a + b;
    		return c;
       }
       
    public static int subNums(int a, int b)
       {
    		int c;
    		c = a - b;
    		return c;
       }
       
    public static int multiNums(int a, int b)
       {
    		int c;
    		c = a * b;
    		return c;
       }
       
    public static int divNums(int a, int b)
       {
    		int c = 0;
    		
    		try
    		{
    		
	    		c = a / b;
    		
    		}
    		
    		catch(Exception e)
    		{
    			System.out.println("Division by zero");
    			c = 0;
    		}
    		
    		return c;
    		
       }
       
    public static int factNums(int a, int b)
       {
       	
    		int c = 1;
    		
    		for(int x = a; x <= a; x++)
    		{
    			c *= y;
    		}
    		
    		return c;
    		
       }
       
    public static int modNums(int a, int b)
       {
    		int c;
    		c = a % b;
    		return c;
       }
    	
    }
    
    
}