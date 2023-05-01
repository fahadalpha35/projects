package lab2;

import java.text.DecimalFormat;
import java.util.Scanner;

public class lab2ex1 {

	public static void main(String [] args){
		
		Scanner input = new Scanner(System.in);
		
		DecimalFormat twoDigits = new DecimalFormat("0.00");
		
		double fahrenheit;
		
		System.out.print("Enter Fahrenheit Degree : ");
		fahrenheit = input.nextDouble();
		
		double celsius = (((fahrenheit - 32)*5)/9);
		
		System.out.println("Fahrenheit : " + twoDigits.format(fahrenheit));
		System.out.println("Fahrenheit --> Celsius : " + twoDigits.format(celsius));
		
	}
}
