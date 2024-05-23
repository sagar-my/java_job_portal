
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored = "false" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Jobs Page</title>
        <%@include file="allCss.jsp" %>
    </head>
    <body style="background-color: #f0f1f2;">
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
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal","root","");
PreparedStatement pst=con.prepareStatement("Select * from job where job_id=?");

pst.setString(1, job_id);
%>
        
<%
      
      ResultSet rs=pst.executeQuery();
      while(rs.next())
      {

%> 

        
        <diV class="container">
            <diV class="row">
                <div class="col-md-12">
                    <div class="card mt-4">
                        <div class="card-body">
                            <h4 class="text-center mb-4">Edit Jobs</h4>
                             
                            <form action="edit.jsp" method="post">
                                
                                <input type="hidden" name="job_id" value="<%= rs.getString(1) %>">
                                
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Enter Job Title*</label>
                                    <input type="text" class="form-control" value="<%= rs.getString(3) %>"  placeholder="Enter Job Title" name="jobname" required="required">
                                </div>
                                
                                <div class="row">
                                <div class="form-group col-md-4">
                                    <label for="exampleInputEmail1">Location*</label>
                                    <input type="text" class="form-control" value="<%= rs.getString(4) %>" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Location" required="required" name="address">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="exampleInputEmail1">Category*</label>
                                    <input type="text" class="form-control" value="<%= rs.getString(5) %>" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Category" required="required" name="category">
                                </div>
                                
                                
                                
                                
                                <div class="form-group col-md-4">
                                    <label>Status*</label>
                                    <select class="form-control" name="status">
                                        <option value="selected">--Select--</option>
                                        <option value="Active">Active</option>
                                        <option value="Inactive">Inactive</option>
                                    </select>
                                </div>
                                </div>
                                
                                
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Description*</label>
                                    <textarea  value="<%= rs.getString(7) %>" rows="5" cols="100" name="msg"></textarea>
                                </div>
                                
                                
                                <input type="submit" class="btn btn-primary" value="Update Job">
                            </form>
  
                        </div>
                    </div>
                </div>
            </diV>
        </diV>
        
        
        
 <%
  }
  %>       
        
        
        
        
        
        
        
            <%@include file="footer.jsp" %>
            
<%
}
%>            
    </body>
</html>
