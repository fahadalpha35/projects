package lab6assignment; // program executes class file into Basic Programming Concepts Assignment folder.

import javax.swing.JOptionPane;
import java.util.Scanner; // program uses class Scanner

public class lab6ex4_19 
{
	
	// main method begins execution of java application
    public static void main (String [ ] args ) 
    {
    	
    	int quantity;
        int item;
        double salary = 200.00;
        double commission = 0.09;
        double total= 0;
        String msg="";


        SalesCommissionCalculator item1 = new SalesCommissionCalculator("1", 239.99);
        SalesCommissionCalculator item2 = new SalesCommissionCalculator("2", 129.75);
        SalesCommissionCalculator item3 = new SalesCommissionCalculator("3", 99.95);
        SalesCommissionCalculator item4 = new SalesCommissionCalculator("4", 350.89);

        item=Integer.parseInt(JOptionPane.showInputDialog("Enter item number 1, 2, 3 or 4. Enter -1 to quit."));

        while(item != -1)
        {
        	
            switch(item)
             {
	            case 1: quantity=Integer.parseInt(JOptionPane.showInputDialog("Enter quantity"));
	                    total = (quantity*item1.getValue());
	                    break;
	
	            case 2: quantity=Integer.parseInt(JOptionPane.showInputDialog("Enter quantity"));
	                    total= (quantity*item2.getValue());
	                    break;
	
	            case 3: quantity=Integer.parseInt(JOptionPane.showInputDialog("Enter quantity"));
	                    total = (quantity*item3.getValue());
	                    break;
	
	            case 4: quantity=Integer.parseInt(JOptionPane.showInputDialog("Enter quantity"));
	                    total = (quantity*item4.getValue());
	                    break;
	
	            default: 
	                    System.out.println("Invalid Item Number");
             }

            item=Integer.parseInt(JOptionPane.showInputDialog("Enter item number 1, 2, 3 or 4. Enter -1 to quit."));

        }

            msg = msg + String.format("Your Commission is $%.2f", (total*commission)+salary);

            JOptionPane.showMessageDialog(null, msg);
    	
    } // end method main

} // end class lab6ex4_19
