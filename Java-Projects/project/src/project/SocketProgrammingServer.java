package project;

import java.net.*;
import java.io.*;
import java.util.*;

public class SocketProgrammingServer 
{
	public static void main(String[] args) throws IOException 
	{
		ServerSocket ss=new ServerSocket(6010);

		Socket s=ss.accept();
		System.out.println("Client is connected");
		
		PrintWriter pr= new PrintWriter(s.getOutputStream());

		InputStreamReader in =new InputStreamReader(s.getInputStream());
		BufferedReader bf= new BufferedReader(in);
		
		Scanner sc = new Scanner (System.in);
		
		while (true) {
		String str=bf.readLine();
		System.out.println(str);
		
		String st;
		st=sc.nextLine();
		pr.println(st);
		pr.flush();
		}
	}
}