
<%@page import="java.util.Date"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.ServletException" %>
<%@page import ="java.io.IOException" %>
<%@page import ="java.io.PrintWriter" %>
<%@page import ="javax.servlet.ServletException" %>
<%@page import ="javax.servlet.http.HttpServlet" %>
<%@page import =" javax.servlet.http.HttpServletResponse" %>
<%@page import ="javax.servlet.http.HttpServletRequest" %>
<%@page import ="javax.servlet.http.HttpSession" %>
<%
    String admin_email = request.getParameter("admin_email");
    String admin_password = request.getParameter("admin_password");

   
    if (admin_email.equals("sagar.chaudhary25008@gmail.com") && admin_password.equals("sagar@123")){
        
          session.setAttribute("user",admin_email); 
          response.sendRedirect("adminhomepage.jsp");
//        request.getRequestDispatcher("adminhomepage.jsp").forward(request, response);
    } else {
        response.sendRedirect("adminloginpage.jsp");
         session.setAttribute("failMsg", "Email And Password Invaild");
     

    }

%>
