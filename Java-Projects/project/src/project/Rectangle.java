package project;

public class Rectangle {

	private float length,width; 
	private void Rectangle(){ 
	length = 1.0f;
	width = 1.0f;
	}
	   
	public float perimeter(){ 
	return 2*(length+width);
	}
	public float area(){
	return (length*width);
	}
	   
	public void setLength(float len)
	{
	if(len >1.0f && len <25.0f)
	length = len;
	else
	System.out.println("Invalid Length");
	}
	public void setWidth(float wid)
	{
	if(wid >1.0f && wid <25.0f)
	width = wid;
	else
	System.out.println("Invalid width");
	}
	public float getLength(){
	return length;
	}
	public float getWidth(){
	return width;
	}

}