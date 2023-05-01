package lab6assignment; // program executes class file into Basic Programming Concepts Assignment folder.

import java.io.*; // needed for file classes

public class lab6ex4_32 
{
	
	// main method begins execution of java application
		public static void main( String[] args )
		{
			
			int row = 1;

			while ( row <= 8 )
			{

			   int column = 1;
			   
			   if ( row % 2 == 0 )
			   System.out.print( " " );

			   while ( column <= 8 )
			     {
			        System.out.print( "* " );
			        column++;
			     }

			   System.out.println();
			   row++;

			}
			
		} // end main method

} // end class lab6ex4_32
