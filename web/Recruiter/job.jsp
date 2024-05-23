
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>

<%
String comname = (String)session.getAttribute("com");
String jobname = request.getParameter("jobname");
String address = request.getParameter("address");
String category = request.getParameter("category");
String status = request.getParameter("status");
String description = request.getParameter("msg");
String email = (String)session.getAttribute("em");
Timestamp added_date = new Timestamp(System.currentTimeMillis());

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal","root","");
PreparedStatement pst = con.prepareStatement("insert into job(com_name,job_title,location,category,status,description,email,date) values(?,?,?,?,?,?,?,?)");

pst.setString(1, comname);
pst.setString(2, jobname);
pst.setString(3, address);
pst.setString(4, category);
pst.setString(5, status);
pst.setString(6, description);
pst.setString(7, email);
pst.setTimestamp(8, added_date);

int r = pst.executeUpdate();

if(r>0)
{
session.setAttribute("succMsg", "Job Inserted........");
response.sendRedirect("add_job.jsp");
}
else
{
session.setAttribute("failedMsg", "Server Problem........");
}
}

catch(Exception ett)
{
out.print(ett);
}
%>
