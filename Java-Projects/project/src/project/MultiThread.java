package project;

class Task1 extends Thread {
	
	public void run() {
		int arr[]={4,2,6,8};
		System.out.println("This is inside Task1");
		int a = arr[0] * 4;
		int b = arr[1] * 4;
		System.out.println("Array1= {"+a+","+b+"}");
	}
}

class Task2 extends Thread {
	
	public void run() {
		int arr[]={4,2,6,8};
		System.out.println("This is inside Task2");
		int c = arr[2] * 4;
		int d = arr[3] * 4;
		System.out.println("Array2= {"+c+","+d+"}");
	}
}

public class MultiThread {
	public static void main(String[] args) {
		Task1 t1 = new Task1();
		Task2 t2 = new Task2();
		t1.start();
		System.out.println("..............");
		t2.start();
	}
}
