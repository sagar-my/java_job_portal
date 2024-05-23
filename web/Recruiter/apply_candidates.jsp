
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Apply Candidates Page</title>
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
    
String job_id = request.getParameter("job_id");
    
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal","root","");
PreparedStatement pst = con.prepareStatement("select * from apply_job where other_id=?");

pst.setString(1, job_id);

%>        


        
        <h3 class="text-center mt-4">Candidates</h3>
        
        <div class="container">
        <table class="table table-striped mt-4">
            <thead class="bg-primary text-white">
    <tr>
      <th scope="col">Candidates Name</th>
      <th scope="col">Email</th>
      <th scope="col">Phone No.</th>
      <th scope="col">Course</th>
      <th scope="col">Experience</th>
      <th scope="col">Resume</th>
    </tr>
  </thead>
<%
 
ResultSet rs = pst.executeQuery();

while(rs.next())
{

              session.setAttribute("jobid", rs.getString(1));
              session.setAttribute("other_id", rs.getString(2));
              session.setAttribute("other_id", rs.getString(3));
              session.setAttribute("email", rs.getString(4));
              session.setAttribute("email", rs.getString(5));
              session.setAttribute("course", rs.getString(6));
              session.setAttribute("experience", rs.getString(5));
              session.setAttribute("resume", rs.getString(6));


%>
  
  
  <tbody> 
    <tr>
      <th scope="row"><%= rs.getString(5)%></th>
      <td><%= rs.getString(6)%></td>
      <td><%= rs.getString(7)%></td>
      <td><%= rs.getString(6)%></td>
      <td><%= rs.getString(10)%></td>
      <td>
          <a href="../download_resume?filedown=<%= rs.getString(11)%>" class="btn btn-sm btn-primary"><i class="fas fa-solid fa-download"> Download</i></a>
      </td>
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
