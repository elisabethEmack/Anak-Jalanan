<%-- 
    Document   : index
    Created on : May 24, 2016, 11:31:52 PM
    Author     : emack
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%String error = request.getParameter("error");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login SIA Mahasiswa</title>
        <link type="text/css" rel="stylesheet" href="design.css">
        <script type="text/javascript">
            <% if ("1".equals(error)) {%>
            alert("Username/password salah!");
            <%}%>
        </script>
    </head>
    <body>
        <div class="body"></div>
        <div class="grad"></div>
        <div class="header">
            <div>SIA<span>Mahasiswa</span></div>
        </div>
        <br>

        <div class="login">
            <form action="LoginCheck" method="post">
                <input type="text" placeholder="username" name="user" required="required"><br>
                <input type="password" placeholder="password" name="password" required="required"><br>
                <input type="hidden" name="page" value="login">
                <input type="hidden" name="error" value="0">
                <input class="button" type="submit" value="Login">
                <a href="lupaPasword.jsp"><div id="link">
                        <br><span class="miring">Lupa Password</span> 
                    </div></a>
            </form>
        </div>        

        <div class="notMember">
            <div>Not<span>A</span>Member</div>
        </div>
        <a class="button" href="GuestPage.jsp"><div>Guest</div></a>
        <br>

    </body>
</html>
