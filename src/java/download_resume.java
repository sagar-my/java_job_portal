

import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.Reader;
import java.sql.Clob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dharmesh Mourya
 */
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10,  //10mb
        maxFileSize = 1024 * 1024 * 1000,   //1GB
        maxRequestSize = 1024 * 1024 * 1000) //1GB
public class download_resume extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        /**
         * *** Get The Absolute Path Of The File To Be Downloaded ****
         */
            PrintWriter pw = response.getWriter();
       
    
try
{
        //fetch the file name from the url
        String filedown = request.getParameter("filedown");
        //get the directory of the file.
        String path = getServletContext().getRealPath("/" + "Resume" + File.separator + filedown);
        //set the content type
        response.setContentType("APPLICATION/OCTET-STREAM");
        //force to download dialog
        response.setHeader("Content-Disposition", "attachment; filename=\"" + filedown + "\"");

        FileInputStream ins = new FileInputStream(path);


        int i;
        while ((i = ins.read()) != -1) {
            pw.write(i);
        }
        ins.close();
        pw.close();
    }
    catch(Exception ett)
    {
    pw.print(ett);
    }
        
        
        
       
    }

}