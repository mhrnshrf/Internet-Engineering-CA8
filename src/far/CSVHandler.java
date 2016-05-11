package far;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/export")
public class CSVHandler extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		CSVBuilder bld = new CSVBuilder();
		File backup = bld.buildFile();
		
	    String filename =  "backup.csv";


	    response.setContentType("text/csv");
	    response.setHeader("Content-disposition", "attachment; filename=\""+filename+"\"");
	    response.setHeader("Cache-Control", "no-cache");
	    response.setHeader("Expires", "-1");

	    
	    java.io.FileInputStream in = new java.io.FileInputStream(backup);
	    OutputStream out = response.getOutputStream();
	    int i;
		while ((i=in.read()) != -1) {
		  out.write(i);
		}
	    in.close();
	    out.close();
	}

}