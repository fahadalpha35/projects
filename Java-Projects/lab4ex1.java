package lab4;

import java.text.DecimalFormat;
import java.util.Scanner;

public class lab4ex1 {
	
	public static void main(String [] args){
		
		Scanner input = new Scanner(System.in);
		
		DecimalFormat twoDigit = new DecimalFormat("0.00");
		
		int principal;
		double annualrate;
		int days;
		
		System.out.print("Enter loan principal (-1 to end) : ");
		principal = input.nextInt();
		
		while(principal != -1){	
			
			System.out.print("Enter interest rate : ");
			annualrate = input.nextDouble();
			
			System.out.print("Enter term of the loan in days : ");
			days = input.nextInt();
			
			double interest = (((principal)*(annualrate)*(days))/365);
			
			System.out.println("The interest charge is $" + twoDigit.format(interest));
			
			System.out.print("Enter loan principal (-1 to end) : ");
			principal = input.nextInt();
		}
	}

}
