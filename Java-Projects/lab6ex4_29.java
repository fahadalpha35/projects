package lab6assignment; // program executes class file into Basic Programming Concepts Assignment folder.

import java.util.Scanner; // program uses class Scanner

public class lab6ex4_29 
{
	
	// main method begins execution of java application
	public static void main (String[] args)
    {
		
        //First, declare variables.
        int x;
        int s;
        int p;
        int r = 0;
        int y = 1;
        int z = 1;
        int f = 1;
                
        Scanner input = new Scanner(System.in);
        
        //Next, ask for and get 'input' variables from the user
        System.out.printf("Please enter the size of the side of a square: ");
        x = input.nextInt();
        
        //Next, compute the desired result, store in 'output' variables.
        s = x + 2;
        p = x - 2;
        
        //Finally, print the results to the console window.
        while (y <= x) 
        {
            System.out.printf(" * ");
            y++;
        }
        while (r < p) 
        {
            System.out.print("\n * ");
            while (z <= p) 
            {
                System.out.print("   ");
                z++;
            }
            System.out.print(" * ");
            r++;
            z=1;
        }
        System.out.print("\n");
        if (x > 1)
        {
            while (f <= x) 
            {
                System.out.printf(" * ");
                f++;
            }
            System.out.printf("\n");
        }
        else
                System.out.printf("\n");
        
    } // end method main

} // end class lab6ex4_29
