package lab1;

import java.util.Scanner;

public class lab1ex1 {

public static void main(String [] args){
		
		Scanner input = new Scanner(System.in);
		
		int num1;
		int num2;
		int num3;
		
		System.out.print("Enter the 1st number : ");
		num1 = input.nextInt();
		
		System.out.print("Enter the 2nd number : ");
		num2 = input.nextInt();
		
		System.out.print("Enter the 3rd number : ");
		num3 = input.nextInt();
		
		int sum = num1 + num2 + num3;
		int product = num1 * num2 * num3;
		int average = (sum)/3;
		
		System.out.println("Sum of 3 Integer : " + sum);
		System.out.println("Product of 3 Integer : " + product);
		System.out.println("Average of 3 Integer : " + average);
	}
}
