<%-- 
    Document   : add_book
    Created on : Oct 9, 2022, 1:48:31 PM
    Author     : Dell
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored = "false" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Jobs Page</title>
        <%@include file="allCss.jsp" %>
    </head>
    <body style="background-color: #f0f1f2;">
 <%   
String com_name = (String)session.getAttribute("com");
String req = (String)session.getAttribute("em");

if(req==null)
{
 response.sendRedirect("../recruiter_login.jsp");
}
else
{
%>        
        <%@include file="navbar.jsp" %>
        
        
        <c:if test="${not empty succMsg}">
            <div class="alert alert-success text-center" role="alert">${succMsg}</div>
            <c:remove var="succMsg" scope="session"/>
        </c:if>
            
        <c:if test="${not empty failedMsg}">
            <div class="alter alert-danger text-center" role="alert">${failedMsg}</div>
            <c:remove var="failedMsg" scope="session"/>
        </c:if>
        
        
        
        <diV class="container">
            <diV class="row">
                <div class="col-md-12">
                    <div class="card mt-4">
                        <div class="card-body">
                            <h4 class="text-center mb-4">Add Jobs</h4>
                             
                            <form action="job.jsp" method="post">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Company Name*</label>
                                    <input type="text" class="form-control"  placeholder="Enter Job Title" value="<%= com_name %>" name="comname" required="required">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Enter Job Title*</label>
                                    <input type="text" class="form-control"  placeholder="Enter Job Title" name="jobname" required="required">
                                </div>
                                
                                <div class="row">
                                <div class="form-group col-md-4">
                                    <label for="exampleInputEmail1">Location*</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Location" required="required" name="address">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="exampleInputEmail1">Category*</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Category" required="required" name="category">
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
                                    <textarea rows="5" cols="100" name="msg"></textarea>
                                </div>
                                
                                
                                <input type="submit" class="btn btn-primary" value="Add">
                            </form>
  
                        </div>
                    </div>
                </div>
            </diV>
        </diV>
        
        
        
        
        
        
        
        
        
        
        
        <div style="margin-top: 80px;">
            <%@include file="footer.jsp" %>
        </div>
<%
}
%>        

    </body>
</html>
