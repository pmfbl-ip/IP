package u05_02_SimpleWebServer;

import java.io.*;
import java.net.*;
import java.util.*;

class WebServer
{
	public static void main(String args[]) throws Exception
	{
		String requestMessageLine;
		String fileName;

		// check if a port number is given as the first command line argument
		// if not argument is given, use port number 1081
		int myPort = 80;
		if (args.length > 0)
		{
			try
			{
				myPort = Integer.parseInt(args[0]);
			}
			catch (ArrayIndexOutOfBoundsException e)
			{
				System.out.println("Need port number as argument");
				System.exit(-1);
			}
			catch (NumberFormatException e)
			{
				System.out.println("Please give port number as integer.");
				System.exit(-1);
			}
		}

		// set up connection socket
		ServerSocket listenSocket = new ServerSocket(myPort);

		// listen (i.e. wait) for connection request
		System.out.println("Web server waiting for request on port " + myPort);
		Socket connectionSocket = listenSocket.accept();

		// set up the read and write end of the communication socket
		BufferedReader inFromClient = new BufferedReader(new InputStreamReader(
				connectionSocket.getInputStream()));
		DataOutputStream outToClient = new DataOutputStream(
				connectionSocket.getOutputStream());

		// retrieve first line of request and set up for parsing
		requestMessageLine = inFromClient.readLine();
		System.out.println("Request: " + requestMessageLine);
		StringTokenizer tokenizedLine = new StringTokenizer(requestMessageLine);

		// check for GET request
		if (tokenizedLine.nextToken().equals("GET"))
		{
			fileName = tokenizedLine.nextToken();

			// remove leading slash from line if exists
			if (fileName.startsWith("/") == true)
				fileName = fileName.substring(1);

			// access the requested file
			File file = new File(fileName);

			// convert file to a byte array
			int numOfBytes = (int) file.length();
			FileInputStream inFile = new FileInputStream(fileName);
			byte[] fileInBytes = new byte[numOfBytes];
			inFile.read(fileInBytes);

			// Send reply
			outToClient.writeBytes("HTTP/1.0 200 Document Follows\r\n");
			if (fileName.endsWith(".jpg"))
				outToClient.writeBytes("Content-Type: image/jpeg\r\n");
			if (fileName.endsWith(".gif"))
				outToClient.writeBytes("Content-Type: image/gif\r\n");
			outToClient.writeBytes("Content-Length: " + numOfBytes + "\r\n");
			outToClient.writeBytes("\r\n");
			outToClient.write(fileInBytes, 0, numOfBytes);

			// read and print out the rest of the request
			requestMessageLine = inFromClient.readLine();
			while (requestMessageLine.length() >= 5)
			{
				System.out.println("Request: " + requestMessageLine);
				requestMessageLine = inFromClient.readLine();
			}
			System.out.println("Request: " + requestMessageLine);

			inFile.close();
			connectionSocket.close();
			listenSocket.close();
		}
		else
		{
			System.out.println("Bad Request Message");
		}
	}
}
