import java.awt.Graphics;
import javax.swing.JPanel;
import java.awt.Color;

public class ConcentricCircles extends JPanel
{

     public void paintComponent( Graphics g ) 
    {
        super.paintComponent( g );
 
      // create 8 concentric circles
      for ( int topLeft = 0; topLeft < 80; topLeft += 10 )
      {
         int radius = 160 - ( topLeft * 2 );
         g.setColor( Color.RED );
         g.drawArc( topLeft + 10, topLeft + 25, radius, radius, 0, 360 );
      }
    }
    
}