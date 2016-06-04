<%-- 
    Document   : model_admin
    Created on : May 22, 2016, 6:05:37 PM
    Author     : Lycorice
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Mahasiswa"%>
<%@page import="Model.Mahasiswa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
    </head>
    <body>
        <% ArrayList<Mahasiswa> mengambilList = (ArrayList<Mahasiswa>) request.getAttribute("mengambilLists");
        %>
        <form name=login method="get" action=>
            <center>
                    <h1>Informasi Admin</h1><br>
                <table border=1>
                    <tr>
                        <td>NIM Mahasiswa</td>
                        <td>Nama Mahasiswa</td>
                        <td>Jumlah SKS</td>
                    </tr>
                    <% for (int i = 0; i < mengambilList.size(); i++) {%>
                    <tr>
                        <td><% out.println(mengambilList.get(i).getNim());%></td>
                        <td><% out.println(mengambilList.get(i).getNama());%></td>
                        <!--<td><% // out.println(mengambilList.get(i).get());%></td>
                        ####JUMLAH SKS-->
                    </tr>
                    <% }%>
                    <tr>
                        <td>
                            <a href='index.jsp'>back</a>
                        </td>
                    </tr>
                </table>
            </center>
        </form>
        </div>
    </body>
</html>
