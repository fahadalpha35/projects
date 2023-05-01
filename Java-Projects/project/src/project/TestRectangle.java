package project;

import java.util.Scanner;
import java.util.*;

public class TestRectangle {

    public static void main(String[] args){
    	Rectangle obj = new Rectangle(); 
    	   Scanner sc = new Scanner (System.in);
    	   float len,width;
    	       System.out.println("Enter the length of the Rectangle");
    	       len = sc.nextFloat();
    	       System.out.println("Enter the width of the Rectangle");
    	       width = sc.nextFloat();
    	       obj.setLength(len); 
    	       obj.setWidth(width);
    	       System.out.println("Length of the triangle is : "+obj.getLength());
    	       System.out.println("Width of the triangle is : "+obj.getWidth());
    	       System.out.println("Area of the triangle is : "+obj.area());
    	       System.out.println("Perimeter of the triangle is : "+obj.perimeter());      

    }

}