
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Jobs Page</title>
        <%@include file="All_Components/allCss.jsp" %>
    </head>
    <body>
        <%@include file="All_Components/navbar.jsp" %>

<%       
String email = (String)session.getAttribute("usem");

if(email==null)
{
 response.sendRedirect("login.jsp");
}
else
{
%>        

<%

String email2 = (String)session.getAttribute("usem");
    
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal","root","");
PreparedStatement pst = con.prepareStatement("select * from apply_job where email=? order by jobid desc");

pst.setString(1, email2);
%>        

        <c:if test="${not empty succMsg}">
            <div class="alert alert-success text-center" role="alert">${succMsg}</div>
            <c:remove var="succMsg" scope="session"/>
        </c:if>
            
        <c:if test="${not empty failedMsg}">
            <div class="alert alert-danger text-center" role="alert">${failedMsg}</div>
            <c:remove var="failedMsg" scope="session"/>
        </c:if>
        
        <h3 class="text-center mt-4">All Jobs</h3>
        
        <div class="container-fluid">
        <table class="table table-striped mt-4">
            <thead class="bg-primary text-white">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Company Name</th>
      <th scope="col">Job_Title</th>
      <th scope="col">Location</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
<%
ResultSet rs = pst.executeQuery();

while(rs.next())
{

              session.setAttribute("job_id", rs.getString(1));
              session.setAttribute("comp", rs.getString(3));
              session.setAttribute("job_title", rs.getString(4));
              session.setAttribute("location", rs.getString(8));
%>
  
  
  <tbody> 
    <tr>
      <th scope="row"><%= rs.getString(1)%></th>
      <td><%= rs.getString(3)%></td>
      <td><%= rs.getString(4)%></td>
      <td><%= rs.getString(8)%></td>
      <td>
          <a href="delete_job.jsp?job_id=<%= rs.getString(1)%>" class="btn btn-sm btn-danger"><i class="fas fa-trash-alt">  Delete</i></a>
      </td>
    </tr>
    
  </tbody>
  
<%
  }
%>  
  
</table>
        
        
   </div>     
        
        
        
        
        
        
        
        
        
        
        <div style="margin-top: 300px;">
            <%@include file="All_Components/footer.jsp" %>
        </div>
        
        
 <%
 }
 %>
    </body>
</html>
