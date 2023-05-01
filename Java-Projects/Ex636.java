/*
 * Ex.6.36 - A program that will help an elementary school student learn multiplication.
 */

package groupassignment;

import java.awt.*;
import java.util.Random;
import java.util.Scanner;
import javax.swing.*;

public class Ex636 extends JApplet 
{

	private Random randomNumbers = new Random(); 
	private enum Status { Right, Wrong };
	
	// Ask the user to answer multiplication problems.
	public void init()
	{
		
		while (true)
		{ 
			
			// Get two random numbers between 0 and 9
			int number1 = 1 + randomNumbers.nextInt( 10 ); // First random number.
			int number2 = 1 + randomNumbers.nextInt( 10 ); // Second random number.
			int multiplication = number1 * number2;
			int mOfNumbers;
			Status answerStatus;// The user's guess.
			
			// Display the question.
			String input = JOptionPane.showInputDialog
			( "How much is " + number1 + " times " + number2 + "? " );
			
			mOfNumbers = Integer.parseInt(input);
			
			// Checks if the user answered correctly.
			if ( mOfNumbers == multiplication )
			answerStatus = Status.Right;
			
			else
			answerStatus = Status.Wrong;
			
			if ( answerStatus == Status.Right )
			{
				
				   JOptionPane.showMessageDialog(null, "Very Good! " );
				   JOptionPane.showMessageDialog(null, "Excellent! " );
				   JOptionPane.showMessageDialog(null, "Nice work! " );
				   JOptionPane.showMessageDialog(null, "Keep up the good work! " );
				
			}
			
			else
				JOptionPane.showMessageDialog(null, "No. Please try again." );
				JOptionPane.showMessageDialog(null, "Wrong. Try once more." );
				JOptionPane.showMessageDialog(null, "Don't give up!" );
				JOptionPane.showMessageDialog(null, "No. Keep trying." );
		
		} // End while.
	
	} // End init.

} // End Class Ex6.36.
