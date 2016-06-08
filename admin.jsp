<%-- 
    Document   : model_admin
    Created on : May 22, 2016, 6:05:37 PM
    Author     : Lycorice
--%>

<%@page import="Model.Mahasiswa"%>
<%@page import="Model.Admin"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
    </head>
    <body>
        <% ArrayList<Admin> adminList = (ArrayList<Admin>) request.getAttribute("adminList");
         ArrayList<Mahasiswa> adminList2 = (ArrayList<Mahasiswa>) request.getAttribute("adminList2");
        %>
        <center>
                <h1>Informasi Admin</h1><br>
            <table border=1>
                <tr>
                    <td>NIM Mahasiswa</td>
                    <td>Nama Mahasiswa</td>
                    <td>Jumlah SKS</td>
                </tr>
                <% for (int i = 0; i < adminList.size(); i++) {
                String nim = adminList.get(i).getNim();
                String nama = adminList2.get(i).getNama();
                int totalsks = adminList.get(i).getTotalSKS();
                %>
                <tr>
                    <td>
                        <a href="AdminSelectServlet?slcnim=<%=nim%>" method="GET">
                        <%=nim%>
                        </a>
                    </td>
                    <td><%=nama%></td>
                    <td><%=totalsks%></td>
                </tr>
                <% }%>
                <tr>
                    <td>
                        <a href='index.jsp'>Log Out</a>
                    </td>
                </tr>
            </table>
        </center>
    </body>
</html>
