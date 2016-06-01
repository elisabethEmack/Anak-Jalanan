<%-- 
    Document   : lupaPasword
    Created on : May 24, 2016, 11:46:32 PM
    Author     : emack
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lupa Password</title>
        <link type="text/css" rel="stylesheet" href="design.css">
    </head>
    <body>
        <div class="body"></div>
        <div class="grad"></div>
        <div class="header">
            <div>Lupa<span>Password</span></div>
        </div>
        <br>        
        <div class="login">
            <form action="LoginCheck" method="POST" >
                <input type="text" placeholder="username" name="user" required="required"><br>
                <input type="text" placeholder="dd/mm/yyyy" name="bday" required="required"><br>
                <input type="text" placeholder="tempat lahir" name="tmpLahir" required="required"><br>
                <input type="hidden" name="page" value="lupaPassword">
                <input class="button" type="submit" value="Reset Password">            
            </form>
        </div>
    </body>
</html>
