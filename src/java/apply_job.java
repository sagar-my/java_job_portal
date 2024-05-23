/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.*;
import java.sql.*;
import java.io.PrintWriter;
import javax.servlet.http.*;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell
 */

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10,  //10mb
        maxFileSize = 1024 * 1024 * 1000,   //1GB
        maxRequestSize = 1024 * 1024 * 1000) //1GB
public class apply_job extends HttpServlet {

     
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        
    PrintWriter pw = response.getWriter();
    HttpSession session = request.getSession();
    
  
    String ot_id = request.getParameter("id");
    String com_name = request.getParameter("com_name");
    String job_title = request.getParameter("job_title");
    String username = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String location =request.getParameter("location");
    String course = request.getParameter("course");
    String experience = request.getParameter("experience");
    Part part = request.getPart("resume");
    String fileName = part.getSubmittedFileName();

    
    String uploadPath = "C:/Users/sagar/OneDrive/Documents/NetBeansProjects/Job Portral/web/Resume"+fileName;
    
    try
    {
     
    FileOutputStream fos = new FileOutputStream(uploadPath);
    
    InputStream is = part.getInputStream();
    
    byte[] data = new byte[is.available()];
    is.read(data);
    fos.write(data);
    fos.close();
    
    }
    catch(Exception et)
    {
    pw.print(et);
    }
    

    
    
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal","root","");
PreparedStatement pst=con.prepareStatement("insert into apply_job (other_id,comp_name,job_title,name,email,phone,location,course,experience,resume) values(?,?,?,?,?,?,?,?,?,?)");
   


    pst.setString(1, ot_id);
    pst.setString(2, com_name);
    pst.setString(3, job_title);
    pst.setString(4, username);
    pst.setString(5, email);
    pst.setString(6, phone);
    pst.setString(7, location);
    pst.setString(8, course);
    pst.setString(9, experience);
    pst.setString(10, fileName);
    
    
    
    int u = pst.executeUpdate();
    
    
    
    
    if(u>0)
    { 

    
    
    session.setAttribute("succMsg", "You Are Apply For Job");
    response.sendRedirect("apply_form.jsp?id="+ot_id);
    }
    
    else
    {
    session.setAttribute("failedMsg", "Something Wrong On Server");
    response.sendRedirect("apply_form.jsp?");
    }
    
    
    }
    catch(Exception ett)
    {
    pw.print(ett);
    }
    }
    
    
    }  
