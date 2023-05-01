import javax.swing.JFrame;
 
public class ConcentricCirclesTest extends JFrame 
{
    public static void main(String[] args) 
    {
     
        JFrame frame = new JFrame("Concentric Circles");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
 
        ConcentricCircles cCirclesJPanel = new ConcentricCircles();
        frame.add(cCirclesJPanel);
        frame.setSize(200,250);
        frame.setVisible(true);
 
    }
}