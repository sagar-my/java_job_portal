
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String job_id = request.getParameter("job_id");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal","root","");
PreparedStatement pst=con.prepareStatement("delete from job where job_id=?");

pst.setString(1, job_id);

int r = pst.executeUpdate();

if(r>0)
{
    session.setAttribute("succMsg", "Job Delete Sccessfully....");
    response.sendRedirect("all_jobs.jsp");
}
else
{
    session.setAttribute("failedMsg", "Somthing Wrong On Server....");
    response.sendRedirect("all_jobs.jsp");
}

%>
