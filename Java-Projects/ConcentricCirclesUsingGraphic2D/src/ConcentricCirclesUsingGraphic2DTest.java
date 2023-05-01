import javax.swing.JFrame;
 
public class ConcentricCirclesUsingGraphic2DTest extends JFrame 
{
    public static void main(String[] args) 
    {
     
        JFrame frame = new JFrame("Concentric Circles");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
 
        ConcentricCirclesUsingGraphic2D cCirclesJPanel = new ConcentricCirclesUsingGraphic2D();
        frame.add(cCirclesJPanel);
        frame.setSize(200,250);
        frame.setVisible(true);
 
    }
}