<%-- 
    Document   : logout
    Created on : Nov 15, 2022, 10:57:16 PM
    Author     : Dell
--%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
String em = (String)session.getAttribute("em");
if(em!=null)
{
    session.removeAttribute("em");
    session.setAttribute("logout", "Logout Successfully....");
    response.sendRedirect("../recruiter_login.jsp");
}
%>
    </body>
</html>
