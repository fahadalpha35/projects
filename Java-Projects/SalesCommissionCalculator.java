package lab6assignment; // program executes class file into Basic Programming Concepts Assignment folder.

public class SalesCommissionCalculator 
{
	
	private String item;
    private double value;

    public SalesCommissionCalculator()
    {
        setItem("");
        setValue(0.0);

    }

    public SalesCommissionCalculator(String i, double v)
    {
        setItem(i);
        setValue(v);

    }

    public void setItem(String i)
    {
        item = i;
    }

    public void setValue(double v)
    {   
        value = v;
    }


    public String getItem()
    {
        return item;
    }

    public double getValue()
    {
        return value;
    }


    public String toString()
    {
        return ("Item"+item+"Value"+value);
    }

} // end class SalesCommissionCalculator 
