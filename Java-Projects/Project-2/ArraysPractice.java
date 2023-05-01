/* Java Programming Tutorials #8
 * Arrays and an even number Calculator
 */

import java.util.Scanner;

public class ArraysPractice 
{

    public static void main(String[] args) 
    {
    	
    	int value = 0, sum = 0, counter = 0;
    	boolean valueCheck = false, inputCheck = false;
    	Scanner input = new Scanner(System.in);
    	
    	while(valueCheck == false)
    	{
    		
    		System.out.println("Please enter the number of variables, between 1 and 20, you would like to input.");
    		value = input.nextInt();
    		
    		if(value < 1 || value < 20)
    		{
    			System.out.println("Sorry, the number of variables you input is out of the permitted range.");
    		}
    		
    		else
    		{
    			valueCheck = true;
    		}
    		
    	}
    	
    	int[] a = new int[value];
    	int[] b = new int[value];
    	
    	while(inputCheck == false)
    	{
    		
    		for(int x = 0; x < a.length; x++)
    		{
    			
    			a[x] = input.nextInt();
    			
    			if(a[x] > 100)
    			{
    				System.out.println("The number you have entered is too large. Please re-enter");
    			}
    			
    		}
    	
    	inputCheck = true;
    		
    	}
    	
    	for(int y = 0; y < a.length; y++)
    	{
    		
    		if(a[y] % 2 == 0)
    		{
    			b[counter] = a[y];
    			counter++;
    		}
    		
    	}
    	
    	for(int z = 0; z < b.length; z++)
    	{
    		
    		if(a[y] % 2 == 0)
    		{
    			sum += b[z];
    		}
    		
    	}
    	
    	System.out.println("The sum of the even number you entered is: " + sum + ".");
    	
    }
    
    
}