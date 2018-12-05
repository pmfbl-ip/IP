import java.applet.Applet;
import java.awt.*;


public class Kucica extends Applet
{

	public void paint( Graphics g)
	{
		setBackground( Color.GRAY );
		g.setColor( Color.GREEN );
		g.fillRect( 300, 300, 100, 100 );
		g.setColor( Color.BLUE );
		g.fillOval( 300, 300, 100, 100 );
		g.setColor( Color.YELLOW );
		g.drawOval( 300, 300, 100, 100 );
		g.setColor( Color.RED );
		g.drawRect( 300, 300, 100, 100 );
		g.drawLine( 300, 300, 350, 250 );
		g.drawLine( 350, 250, 400, 300 );
		g.drawString( "Moj aplet", 325, 355 );
		// tackice su mali krugovi poluprecnika 2
		g.fillOval( 300-2, 300-2, 4, 4 );
		g.fillOval( 300-2, 400-2, 4, 4 );
		g.fillOval( 350-2, 250-2, 4, 4 );
		g.fillOval( 400-2, 300-2, 4, 4 );
		g.fillOval( 400-2, 400-2, 4, 4 );		
	}
}
