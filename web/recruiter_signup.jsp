

<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String comp = request.getParameter("comp");
String name = request.getParameter("name");
String email = request.getParameter("email");
String pass = request.getParameter("pass");
String address = request.getParameter("address");
String phone = request.getParameter("phone");
try
{
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal","root","");
   PreparedStatement pst=con.prepareStatement("insert into recruiter (com_name,recruiter_name,email,password,address,phone) values(?,?,?,?,?,?)");
 
pst.setString(1, comp);
pst.setString(2, name);
pst.setString(3, email);
pst.setString(4, pass);
pst.setString(5, address);
pst.setString(6, phone);

int r=pst.executeUpdate();
if(r>0)
{
session.setAttribute("succMsg", "You Are Succesfully Register");
response.sendRedirect("recruiter.jsp");
}
else
{
session.setAttribute("failedMsg", "Server Problem....");
response.sendRedirect("recruiter.jsp");
}
}
catch(Exception ett)
{
    out.print(ett);
}
%>
