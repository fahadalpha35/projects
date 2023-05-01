package lab3;

import java.text.DecimalFormat;
import java.util.Scanner;

public class lab3ex5 {

	public static void main(String [] args){
			
			Scanner input = new Scanner(System.in);
			DecimalFormat twoDigits = new DecimalFormat("0.00");
			
			String name;
			double hours;
			double payrate;
			double grosspay;
			double hours1;
			
			System.out.print("Enter Employee Full Name : ");
			name = input.nextLine();
			
			System.out.print("Enter Employee Hours Worked : ");
			hours = input.nextDouble();
			
			System.out.print("Enter Employee Payrate : ");
			payrate = input.nextDouble();
			
			 hours1 = hours - 40;
			
			if(hours > 40){
				grosspay = (((40) * (payrate)) + ((1.5) * (payrate) * (hours - 40)));
			}else{
				grosspay = ((hours) * (payrate));
			}
			
			if( hours1 >= 0) {
				hours1 = hours - 40;
			}else {
				hours1 = 0;
			}
			
			System.out.println("******** Payroll Statement ********");
			System.out.println("Employee Name : " + name);
			System.out.println("Hours worked : " + hours + " Hours ");
			System.out.println("Overtime Worked : " + hours1 + " Hours ");
			System.out.println("Payrate for 1st 40 Hours : $ " + payrate);
			System.out.println("Payrate for after 40 Hours : $ " + (payrate * (1.5)));
			System.out.println("Gross Pay => $ " + twoDigits.format(grosspay));
		
	}
}
