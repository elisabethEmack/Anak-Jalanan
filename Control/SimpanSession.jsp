<%-- 
    Document   : SimpanSession
    Created on : Jun 7, 2016, 10:49:58 AM
    Author     : emack
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<%

    String username = request.getParameter("nim");
    if (username == null) {
        username = "";
    }
    request.getSession().setAttribute("username",username);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% response.sendRedirect("TampilSession.jsp");             %>
    </body>
</html>
