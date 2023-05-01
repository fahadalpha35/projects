import java.awt.Graphics;
import javax.swing.JPanel;
import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.geom.Ellipse2D;

public class ConcentricCirclesUsingGraphic2D extends JPanel
{

     public void paintComponent( Graphics g ) 
    {
        super.paintComponent( g );
        Graphics2D g2d = ( Graphics2D ) g;
 
      // create 8 concentric circles
      for ( int topLeft = 0; topLeft < 80; topLeft += 10 )
      {
         int radius = 160 - ( topLeft * 2 );
         g2d.fill( new Ellipse2D.Double( 5, 30, 65, 100 ) );
         g.setColor( Color.RED );
         g.drawArc( topLeft + 10, topLeft + 25, radius, radius, 0, 360 );
      }
    }
    
}