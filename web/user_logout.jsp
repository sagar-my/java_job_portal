<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%
String email = (String)session.getAttribute("usem");
if(email!=null)
{
    session.removeAttribute("email");
    session.removeAttribute("na");
    session.removeAttribute("usem");
    session.setAttribute("logout", "Logout Successfully....");
    response.sendRedirect("login.jsp");
}
%>