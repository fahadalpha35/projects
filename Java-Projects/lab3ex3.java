package lab3;

import java.util.Scanner;

public class lab3ex3 {

	public static void main (String [] args){
		

		Scanner input = new Scanner(System.in);
		
		int num1;
		int num2;
		
		System.out.print("Enter a number : ");
		num1 = input.nextInt();
		
		System.out.print("Enter another number : ");
		num2 = input.nextInt();
		
		if ( num1 < num2){
			System.out.println( num1 +" is smaller than " + num2);
		}else if ( num1 > num2 ){
			System.out.println( num1 +" is larger than " + num2);
		}else {
			System.out.println( num1 + " is equal to " + num2);
		}
	}
	
	
}
