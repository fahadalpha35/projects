/* Java Programming Tutorials #3
 * Strings and revisiting the Hello Worlds program
 */

import java.util.Scanner;

public class StringsOverview 
{

    public static void main(String[] args) 
    {
    	
    	String name; // RIZ
    	Scanner input = new Scanner(System.in);
    	
    	System.out.println("Please enter your first name.");
    	name = input.next();
    	
    	System.out.println("Hello, " + name + "! Welcome to java experience!");
    	
    }
    
    /* Length - return the total length of the string name.length(); 3
     * chatAt - name.charAt(2) = z
     * substring - name2 = name.substring()
     * concat - name.concat("aleous") = Rizaleous
     */
    
}