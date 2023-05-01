package lab3;

import java.text.DecimalFormat;
import java.util.Scanner;

public class lab3ex6 {

	public static void main(String [] args){
		
		Scanner input = new Scanner(System.in);
		DecimalFormat twoDigits = new DecimalFormat("0.00");
		
		double weight;
		double price = 0;
		double cost1 = 3.50;
		double cost2 = 3.85;
		double cost3 = 2.45;
		
		System.out.print("Enter Weight of parcel : ");
		weight = input.nextDouble();
		
		if ( weight >= 0 && weight <= 2.4 ){
			price = ((3.5) * (weight));
		}else if ( weight >= 2.5 && weight <= 5 ){
			price = ((3.85) * (weight));
		}else if ( weight > 5 ){
			price = ((2.45) * (weight));
		}else{
			System.out.println("Please Enter a Integer and with Positive value");
			System.exit(0);
		}
		
		System.out.println("Cost per kg ($) for < 2.5 kg :  $ " + cost1);
		System.out.println("Cost per kg ($) for 2.5 kg - 5 kg : $ " + cost2);
		System.out.println("Cost per kg ($) for > 5 kg : $ " + cost3);
		System.out.println("Delivery Charge for Parcel : $ " + twoDigits.format(price));
	}
}
