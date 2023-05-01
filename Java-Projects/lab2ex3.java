package lab2;

import java.text.DecimalFormat;
import java.util.Scanner;

public class lab2ex3 {

	public static void main(String [] args){
		
		Scanner input = new Scanner(System.in);
		DecimalFormat threeDigits = new DecimalFormat("0.000");
		
		int feet;
		double foot = 0.305;
		
		System.out.print("Enter number in Feet : ");
		feet = input.nextInt();
		
		double meters = feet * foot;
		
		System.out.println("Feet : " + threeDigits.format(feet));
		System.out.println("1 Foot : " + threeDigits.format(foot) + " Meters ");
		System.out.println("Feet --> Meters : " + threeDigits.format(meters));
	}
}
