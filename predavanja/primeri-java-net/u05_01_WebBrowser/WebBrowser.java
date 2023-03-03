package u05_01_WebBrowser;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Scanner;

public class WebBrowser
{

	private static void browse(String urlAddesss)
	{
		URL url;
		InputStream is = null;
		BufferedReader br;
		String line;

		try
		{
			url = new URL(urlAddesss);
			is = url.openStream(); // throws an IOException
			br = new BufferedReader(new InputStreamReader(is));

			while ((line = br.readLine()) != null)
			{
				System.out.println(line);
			}
		}
		catch (MalformedURLException mue)
		{
			mue.printStackTrace();
		}
		catch (IOException ioe)
		{
			ioe.printStackTrace();
		}
		finally
		{
			try
			{
				if (is != null)
					is.close();
			}
			catch (IOException ioe)
			{
				// nothing to see here
			}
		}

	}
	public static void main(String[] args)
	{
		String url = "www.matf.bg.ac.rs/~vladaf";
		
		if( args.length > 0 )
		{
			url = args[0];
		}
		else			
		{
			System.out.println("Unesite veb adresu:");
			Scanner sc = new Scanner(System.in);
		  	url = sc.next();
		  	sc.close();
		}
		System.out.println("\n Sadzaj veb strane:");		
		browse( url );
	}
}
