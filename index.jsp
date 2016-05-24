<%-- 
    Document   : index
    Created on : May 24, 2016, 11:31:52 PM
    Author     : emack
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login SIA Mahasiswa</title>
        <link type="text/css" rel="stylesheet" href="login.css">
    </head>
    <body>
        <div class="body"></div>
        <div class="grad"></div>
        <div class="header">
            <div>SIA<span>Mahasiswa</span></div>
        </div>
        <br>

        <div class="login">
            <input type="text" placeholder="username" name="user"><br>
            <input type="password" placeholder="password" name="password"><br>           
            <a class="button" href="lupaPasword.jsp">Login</a>
            <a href="lupaPasword.jsp"><div id="link">
                    <br><span class="miring">Lupa Password</span> 
                </div></a>
        </div>        
    </body>
</html>
