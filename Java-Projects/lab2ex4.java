package lab2;

import java.text.DecimalFormat;
import java.util.Scanner;

public class lab2ex4 {

	public static void main(String [] args){
		
		Scanner input = new Scanner(System.in);
		DecimalFormat twoDigits = new DecimalFormat("0.00");
		
		String name;
		double hours;
		double payrate;
		double fTaxrate;
		double sTaxrate;
		
		System.out.print("Enter Employee Full Name : ");
		name = input.nextLine();
		
		System.out.print("Enter Employee Hours Worked : ");
		hours = input.nextDouble();
		
		System.out.print("Enter Employee Hourly Payrate : ");
		payrate = input.nextDouble();
		
		System.out.print("Enter Employee Federal Tax Rate : ");
		fTaxrate = input.nextDouble();
		
		System.out.print("Enter Employee State Tax Rate : ");
		sTaxrate = input.nextDouble();
	
		double grosspay = ((hours) * (payrate));
		double federal = (((fTaxrate)/100) * (grosspay));
		double state = (((sTaxrate)/100) * (grosspay));
		double deduction = ((federal) + (state));
		double netpay = ((grosspay) - (deduction));
		
		System.out.println("******** Payroll Statement ********");
		System.out.println("Employee Name : " + name);
		System.out.println("Hours worked : " + hours + " Hours ");
		System.out.println("Payrate : $ " + payrate);
		System.out.println("Gross Pay => $ " + twoDigits.format(grosspay));
		System.out.println("" );
		System.out.println("******** Deduction ********");
		System.out.println("Federal Tax @ " + fTaxrate + " % : $ " + twoDigits.format(federal));
		System.out.println("State Tax @ " + sTaxrate + " % : $ " + twoDigits.format(state));
		System.out.println("Total Deduction : $ " + twoDigits.format(deduction));
		System.out.println("");
		System.out.println("Net Pay => : $ " + twoDigits.format(netpay));
		
	}
}
