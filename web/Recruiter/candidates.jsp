
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Candidates Page</title>
        <%@include file="allCss.jsp" %>
    </head>
    <body>
        <%@include file="navbar.jsp" %>

<%       
String req = (String)session.getAttribute("em");

if(req==null)
{
 response.sendRedirect("../recruiter_login.jsp");
}
else
{
%>        


<%

    String email = (String)session.getAttribute("em");
    
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal","root","");
PreparedStatement pst = con.prepareStatement("select * from job where email=? order by job_id desc");

pst.setString(1, email);
%>        


        
        <h3 class="text-center mt-4">All Jobs</h3>
        
        <div class="container">
        <table class="table table-striped mt-4">
            <thead class="bg-primary text-white">
    <tr>
      <th scope="col">Job_Title</th>
      <th scope="col">Detailes</th>
      <th scope="col">Total Candidates</th>
    </tr>
  </thead>
<%
ResultSet rs = pst.executeQuery();

while(rs.next())
{
             
              session.setAttribute("com_name", rs.getString(2));
              session.setAttribute("job_title", rs.getString(3));
              session.setAttribute("location", rs.getString(4));

%>
  
  
  <tbody> 
    <tr>
      <th scope="row"><%= rs.getString(3)%></th>
      <td>
          <a href="apply_candidates.jsp?job_id=<%= rs.getString(1)%>&jobname=<%= rs.getString(3)%>" class="btn btn-sm btn-primary"><i class="fas fa-edit">  View</i></a>
      </td>
      <td></td>
    </tr>
    
  </tbody>
  
<%
  }
%>  
  
</table>
        
        
   </div>     
        
        <div style="margin-top: 300px;">
            <%@include file="footer.jsp" %>
        </div>
        
        
<%
}
%>
    </body>
</html>
