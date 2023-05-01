package identifierAssignment;

import java.util.*;

class identifierValidation
{
	static boolean isValid(String str, int n)
	{

		if (!((str.charAt(0) >= 'a' && str.charAt(0) <= 'z')
			|| (str.charAt(0)>= 'A' && str.charAt(0) <= 'Z')
			|| str.charAt(0) == '_'))
			return false;

		for (int i = 1; i < str.length(); i++)
		{
			if (!((str.charAt(i) >= 'a' && str.charAt(i) <= 'z')
				|| (str.charAt(i) >= 'A' && str.charAt(i) <= 'Z')
				|| (str.charAt(i) >= '0' && str.charAt(i) <= '9')
				|| str.charAt(i) == '_'))
				return false;
		}

		return true;
	}

	public static void main(String args[])
	{
		Scanner input = new Scanner(System.in);
	
		System.out.println("Enter an identifier:");
		String str = input.nextLine();
		int n = str.length();

		if (isValid(str, n))
			System.out.println("Valid identifier");
		else
			System.out.println("Not a valid identifier");
	}
}

