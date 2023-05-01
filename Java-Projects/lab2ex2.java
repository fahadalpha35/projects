package lab2;

import java.text.DecimalFormat;
import java.util.Scanner;

public class lab2ex2 {

	public static void main(String [] args){
		
		Scanner input = new Scanner(System.in);
		DecimalFormat threeDigits = new DecimalFormat("0.000");
		
		int radius;
		int length;
		
		System.out.print("Enter the radius : ");
		radius = input.nextInt();
		
		System.out.print("Enter the length : ");
		length = input.nextInt();
		
		double area = (Math.PI * (radius * radius));
		double volume = ((area) * (length));
		
		System.out.println("Cylinder Area : " + threeDigits.format(area));
		System.out.println("Cylinder Volume : " + threeDigits.format(volume));
	}
}
