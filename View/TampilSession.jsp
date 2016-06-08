<%-- 
    Document   : TampilSession
    Created on : Jun 7, 2016, 11:06:11 AM
    Author     : emack
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String username = (String) session.getAttribute("username");
    if (username == null) {
        username = "";
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link type="text/css" rel="stylesheet" href="design.css">
    </head>
    <body>
        <div class="body"></div>
        <div class="grad"></div>
        <div class="notMember">
            <div>Selamat datang : <span><%=username%></span></div>
        </div>        
        <div class="login" >
            <form action="MaKulServlet" method="get">
                <div><input type="submit" value="KRS" name="krs" class="button" /> </div>                
            </form>
            <div><button class="button" value="Logout" onclick="window.location = './logout'" >Logout</button></div>
        </div>
    </body>
</html>
