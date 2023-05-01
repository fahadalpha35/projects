package lab3;

import java.text.DecimalFormat;
import java.util.Scanner;

public class lab3ex4 {

	public static void main(String [] args){
		
		Scanner input = new Scanner(System.in);
		DecimalFormat threeDigits = new DecimalFormat("0.000");
		
		int radius;
		
		System.out.print("Enter the radius : ");
		radius = input.nextInt();
		
		double area = ((Math.PI) * ((radius)*(radius)));
		
		if( radius > 0){
			System.out.println("Circle Area : " + threeDigits.format(area));
		}else{
			System.out.println("****** Error ******");
			System.out.println("Please Enter a Radius which is greater than zero");
		}

	}
}
