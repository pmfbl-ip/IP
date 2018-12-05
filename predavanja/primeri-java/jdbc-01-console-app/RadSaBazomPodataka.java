import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import java.sql.Connection;

import java.sql.ResultSet;
import java.util.Scanner;

public class RadSaBazomPodataka
{

	static void ispisCijeleTabele( Connection conn )
	{
		Statement stmt = null;
		try
		{
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery( "SELECT * FROM Proizvod" );
			while ( rs.next() )
			{
				System.out.print( rs.getInt( 1 ) + "\t " );
				System.out.print( rs.getString( 2 ) + "\t" );
				System.out.print( rs.getDouble( 3 ) + "\t " );
				System.out.print( rs.getDouble( 4 ) + "\t " );
				System.out.println( rs.getDouble( 5 ) + "\t " );
			}

		} catch ( SQLException e )
		{
			e.printStackTrace();
		}

	}

	static void ispisMalihKolicina( Connection conn, double k )
	{
		Statement stmt = null;
		try
		{
			stmt = conn.createStatement();
			ResultSet rs = stmt
					.executeQuery( "SELECT Naziv FROM Proizvod WHERE Kolicina<"
							+ k );
			while ( rs.next() )
				System.out.println( rs.getString( 1 ) );

		} catch ( SQLException e )
		{
			e.printStackTrace();
		}

	}

	static void ubaciProizvod( Connection conn, int pId, String pNaziv,
			double pNab, double pProd, double pKol )
	{
		try
		{
			Statement stmt = conn.createStatement();
			stmt.execute( "INSERT INTO Proizvod (ProizvodId, Naziv, NabavnaCijena, "
					+ "ProdajnaCijena, Kolicina ) VALUES( "
					+ pId
					+ ", '"
					+ pNaziv + "', " + pNab + ", " + pProd + ", " + pKol + ")" );

		} catch ( SQLException e )
		{
			e.printStackTrace();
		}

	}

	static void promijeniKolicinu( Connection conn, int pId, double pKol )
	{
		try
		{
			Statement stmt = conn.createStatement();
			stmt.execute( "UPDATE Proizvod SET Kolicina = " + pKol
					+ " WHERE ProizvodId = " + pId );

		} catch ( SQLException e )
		{
			e.printStackTrace();
		}
	}

	static void obrisiProizvod( Connection conn, int pId )
	{
		try
		{
			Statement stmt = conn.createStatement();
			stmt.execute( "DELETE FROM Proizvod WHERE ProizvodId = " + pId );

		} catch ( SQLException e )
		{
			e.printStackTrace();
		}
	}

	static int brojProizvoda( Connection conn )
	{
		try
		{
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery( "SELECT count(*) FROM Proizvod" );
			rs.next();
			return rs.getInt( 1 );

		} catch ( SQLException e )
		{
			e.printStackTrace();
			return -1;
		}
	}

	public static void main( String[] args )
	{
		try
		{
			Class.forName( "com.mysql.jdbc.Driver" );
		} catch ( Exception e )
		{
			System.out.println( "Nema veze sa MySql bibilotekom" );
			System.out.println( e.toString() );
			System.exit( -2 );
		}
		System.out.println( "Veza sa MySql bibliotekom: OK" );
		Connection conn = null;
		try
		{
			String urlKonekcije = "jdbc:mysql://localhost:3306/Prodavnica?user=root&autoReconnect=true&password=";
			conn = DriverManager.getConnection( urlKonekcije );
		} catch ( SQLException e )
		{
			System.out.println( "Nekorektan URL konekcije " );
			System.out.println( e.toString() );
			System.exit( -1 );
		}
		System.out.println( "URL konekcije: OK" );
		Scanner sc = new Scanner( System.in );

		/*
		 * ispisCijeleTabele( conn );
		 */

		/*
		 * System.out.println("Unesi kolicinu "); double k = sc.nextDouble();
		 * ispisMalihKolicina( conn, k );
		 */

		/*
		 * System.out.println("Unesite podatke o proizvodu");
		 * System.out.println("Id"); int pId = sc.nextInt();
		 * System.out.println("Naziv"); String pNaziv = sc.next();
		 * System.out.println("Nabavna cijena"); double pNab = sc.nextDouble();
		 * System.out.println( "Prodajna cijena" ); double pProd =
		 * sc.nextDouble(); System.out.println("Kolicina"); double pKol =
		 * sc.nextDouble(); ubaciProizvod( conn, pId, pNaziv, pNab, pProd, pKol
		 * );
		 */

		/*
		 * System.out.println("Proizvod Id"); int pId = sc.nextInt();
		 * System.out.println("Nova kolicina"); double pKol = sc.nextDouble();
		 * promijeniKolicinu( conn, pId, pKol );
		 */

		/*
		 * System.out.println( "Proizvod Id" ); int pId = sc.nextInt();
		 * obrisiProizvod( conn, pId );
		 */
		
		System.out.println( "Broj proizvoda je " + brojProizvoda( conn ));
	}

}
