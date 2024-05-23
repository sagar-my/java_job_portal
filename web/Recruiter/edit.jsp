<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>

<%
String job_id = request.getParameter("job_id");
String jobname = request.getParameter("jobname");
String address = request.getParameter("address");
String category = request.getParameter("category");
String status = request.getParameter("status");
String description = request.getParameter("msg");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal","root","");
PreparedStatement pst = con.prepareStatement("update job set job_title=?,location=?,category=?,status=?,description=? where job_id=?");

pst.setString(1, jobname);
pst.setString(2, address);
pst.setString(3, category);
pst.setString(4, status);
pst.setString(5, description);
pst.setString(6, job_id);

int r = pst.executeUpdate();

if(r>0)
{
session.setAttribute("succMsg", "Job Update Successfully....");
response.sendRedirect("all_jobs.jsp");
}
else
{
session.setAttribute("failedMsg", "Something Wrong On Server");
response.sendRedirect("all_jobs.jsp");
}

}
catch(Exception ett)
{
out.print(ett);
}

%>