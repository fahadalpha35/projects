package lab4;

public class lab4ex2 {

	public static void main (String [] args){
		
		int a = 3;
		
		System.out.printf("A\tA+2\tA+4\tA+6\n");
		
		while( a < 18){
			System.out.printf("%d\t%d\t%d\t%d\n", a, a + 2, a + 4, a + 6);
			a++;
			a++;
			a++;
		}
		
	}

}
