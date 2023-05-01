package lab1;

import java.text.DecimalFormat;
import java.util.Scanner;

public class lab1ex2 {

	public static void main(String [] args){
		
		Scanner input = new Scanner(System.in);
		DecimalFormat threeDigits = new DecimalFormat("0.000");
		
		int radius;
		double PI = 3.14159;
		
		System.out.print("Enter the radius : ");
		radius = input.nextInt();
		
		int diameter = ((radius)*(radius));
		double circumference = (2 * (PI) * (radius)) ;
		double area = ((PI) * ((radius)*(radius)));
		
		System.out.println("Circle Diameter : " + threeDigits.format(diameter));
		System.out.println("Circle Circumference : " + threeDigits.format(circumference));
		System.out.println("Circle Area : " + threeDigits.format(area));
	}
}
