package lab3;

import java.util.Scanner;

public class lab3ex2 {

	public static void main (String [] args){
		

		Scanner input = new Scanner(System.in);
		
		int num1;
		
		System.out.print("Enter a number : ");
		num1 = input.nextInt();
		
		if( num1 <= -1){
			System.out.println("****** Error not a Positive Number ******");
			System.out.println("Please try again");
		}else{
			System.out.println("****** Congratulations ******");
			System.out.println("The Number You Have Entered is a Positive Number");
		}
	}
}
