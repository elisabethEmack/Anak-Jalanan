<%-- 
    Document   : TampilanMHS
    Created on : May 22, 2016, 1:09:41 PM
    Author     : HP
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Servlet.DatabaseConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.MataKuliah"%>
<%@page import="Model.Mahasiswa"%>
<%@page import="Model.Dosen"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>KRS Mahasiswa</title>
    </head>
    <body>
        <fieldset> <center>  <legend> Kartu Rencana Studi  <hr> </legend> </center>
            <fieldset> <legend align="center">Data Mahasiswa</legend> 
                <table cellpadding='4' cellspacing='2'>
                    <% String nim = (String) session.getAttribute("username");
                        ArrayList<Mahasiswa> mahaList = (ArrayList<Mahasiswa>) session.getAttribute("mahaList");
                        String nama = null;
                        for (int i = 0; i < mahaList.size(); i++) {
                            if ((mahaList.get(i).getNim()).equals(nim)) {
                                nama = mahaList.get(i).getNama();
                            }
                        }
                    %>
                    <tr>
                        <td> NIM </td>
                        <td> <%=nim%> </td>
                    </tr>
                    <tr>
                        <td> Nama Mahasiswa </td>
                        <td> <%=nama%></td>
                    </tr>
                    <tr>
                        <td> SKS Maks </td>
                        <td> 24 </td>
                    </tr>
                </table>
            </fieldset>

            <fieldset> <legend>Pilih Mata Kuliah</legend>
                <table cellpadding='4' cellspacing='2'>
                    <form action="MengambilServlet" method="post">
                        <tr> 
                        <input  type="submit" value="TAMBAH" name="tambah" style="float: right"/>
                        </tr>
                        <% ArrayList<MataKuliah> mkList = (ArrayList<MataKuliah>) session.getAttribute("makulList");%>
                        <tr>
                        <select name="kode_mk">
                            <% for (int i = 0; i < mkList.size(); i++) {%>
                            <% String nama_mk = mkList.get(i).getNama_Mk();%> 
                            <option value="<%=mkList.get(i).getKd_Mk()%>"> <%=nama_mk%></option>
                            <% }%>
                        </select>
                        </tr>
                    </form>
                    <tr>
                    <form action="TampilSession.jsp" method="post" >
                        <input type="submit" value="HOME" name="home" style="float: right"/>
                    </form>
                    </tr>

                </table>
            </fieldset>
            <fieldset> <legend>Mata kuliah yang diambil</legend>
                <%@include file="HasilKRS.jsp" %>
            </fieldset>
    </body>
</html>
