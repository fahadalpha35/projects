package project;

import java.net.*;
import java.io.*;
import java.util.*;

public class SocketProgrammingClient 
{
	public static void main(String[] args) throws IOException
	{
		Socket s= new Socket("localhost",6010);

		System.out.println("Server is connected");
		
		PrintWriter pr= new PrintWriter(s.getOutputStream());
		
		InputStreamReader in =new InputStreamReader(s.getInputStream());
		BufferedReader bf= new BufferedReader(in);
		
		Scanner sc = new Scanner (System.in);
		while (true) {
			String st;
			st=sc.nextLine();
			pr.println(st);
			pr.flush();
			
			String str=bf.readLine();
			System.out.println(str);
		}
	}
}
