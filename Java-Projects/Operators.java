/**
 * Operators.java -- 090108 (sjd)
 *    Demo common operators
 */


public class Operators
{

    public static void main(String[] args)
    {
    	
    	int a = 19, b = 6;
    	System.out.println("a + b = " + (a + b));
    	System.out.println("a - b = " + (a - b));
    	System.out.println("a * b = " + (a * b));
    	System.out.println("a / b = " + (a / b));
    	System.out.println("(double)a / b = " + ((double)a / b));
    	System.out.println("a % b = " + (a % b));
    	System.out.println("b % a = " + (b % a));
    	a += b;
    	System.out.println("after a += b, a = " + a);
    	System.out.println("a / 0 = " + (a / 0));
    	
    }
    
    
}