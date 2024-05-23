<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String password = request.getParameter("password");
String phone = request.getParameter("phone");
String qualification = request.getParameter("qualification");
String skill = request.getParameter("skill");
String experience = request.getParameter("experience");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal","root","");
PreparedStatement pst = con.prepareStatement("insert into user (name,email,password,phone,qualification,skill,experience) values(?,?,?,?,?,?,?)");
pst.setString(1, name);
pst.setString(2, email);
pst.setString(3, password);
pst.setString(4, phone);
pst.setString(5, qualification);
pst.setString(6, skill);
pst.setString(7, experience);
int r = pst.executeUpdate();
if(r>0)
{
session.setAttribute("succMsg", "You Are Successfully Register");
response.sendRedirect("signup.jsp");
}
else
{
session.setAttribute("failedMsg", "Something Wrong On Server");
response.sendRedirect("signup.jsp");
}
}
catch(Exception ett)
{
out.print(ett);
}
%>