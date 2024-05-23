<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>

<%
String email = (String)session.getAttribute("user");
if(email!=null)
{
    session.removeAttribute("user");
    session.setAttribute("logout_admin", "Logout Successfully....");
    response.sendRedirect("adminloginpage.jsp");
}
%>