package project;

class Rectangle1 implements Polygon_Shape 
{
	public void calculateArea(int length, int breadth) 
	{
		System.out.println("The area of the rectangle is " + (length * breadth));
	}
}