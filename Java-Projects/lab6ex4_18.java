package lab6assignment; // program executes class file into Basic Programming Concepts Assignment folder.

import java.util.Scanner; // program uses class Scanner

public class lab6ex4_18 
{
   
	// main method begins execution of java application
    public static void main (String [ ] args ) 
    {
    	
    	Scanner input = new Scanner( System.in );

        int accnum = 0;
        int begBalance = 0;
        int itemTotal = 0;
        int creditsApplied = 0;
        int creditLimit = 0;
        int newBalance = 0;

        System.out.println("Welcome to the Credit Calculator");

        System.out.println("Please Enter Customer Account Number (or -1 to quit): "); 
        accnum = input.nextInt();
        
          if (accnum != -1)
          {
        	  
              System.out.println("Please Enter Customer Beginning Balance: "); 
            begBalance = input.nextInt();
            
              if (begBalance < 0)
              {
                  System.out.println("Please enter a positive amount");
                  System.out.println("Please Enter Customer Beginning Balance: ");
                  begBalance = input.nextInt();   
              }
              
          }



        while(accnum != -1)
           {
        	
	           System.out.println("Please Enter Total of Items Purchased this Month: "); 
	           itemTotal = input.nextInt();
	           
	              if (itemTotal < 0)
	              {
	                  System.out.println("Please enter a positive amount");
	                  System.out.println("Please Enter Total of Items Purchased this Month: ");
	                  itemTotal = input.nextInt();    
	              }
	
	
	           System.out.println("Please Enter Credits applied to Customer Account: "); 
	           creditsApplied = input.nextInt();
	
	           System.out.println("Please Enter Customer Credit Limit: "); 
	           creditLimit = input.nextInt();
	
	
	           newBalance = begBalance + itemTotal - creditsApplied;
	
	
	              if(newBalance > creditLimit)
	              {
	                  System.out.println("Credit Limit Exceeded");
	              }
	
	
	
	              System.out.println("Please Enter Customer Account Number (or -1 to quit): "); 
	                accnum = input.nextInt();
	                
	                  if (accnum != -1)
	                  {
	                      System.out.println("Please Enter Customer Beginning Balance: "); 
	                    begBalance = input.nextInt();
	                    
	                      if (begBalance < 0)
	                      {
	                          System.out.println("Please enter a positive amount");
	                          System.out.println("Please Enter Customer Beginning Balance: ");
	                          begBalance = input.nextInt();   
	                      }
	                  }

             }

          if(accnum < 0)
          {
              System.out.println("Thank You for using Credit Calculator");
              System.out.println("Goodbye");
          }
    	
    } // end method main
	
} // end class lab6ex4_18
