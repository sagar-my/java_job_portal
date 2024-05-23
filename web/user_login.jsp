<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>

<%
String email = request.getParameter("email");
String pass = request.getParameter("password");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal","root","");
PreparedStatement pst = con.prepareStatement("select * from user where email=? and password=?");

pst.setString(1, email);
pst.setString(2, pass);

ResultSet rs = pst.executeQuery();

if(rs.next())
{
   session.setAttribute("id", rs.getString(1)); 
session.setAttribute("na", rs.getString(2));
session.setAttribute("usem", rs.getString(3));
response.sendRedirect("index.jsp");
}
else
{
response.sendRedirect("login.jsp");
session.setAttribute("failedMsg", "Email And Password Invaild");
}
}
catch(Exception ett)
{
out.print(ett);
}
%>