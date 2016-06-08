<%-- 
    Document   : admin_select_design
    Created on : Jun 4, 2016, 11:15:16 AM
    Author     : Lycorice
--%>

<%@page import="Model.Mahasiswa"%>
<%@page import="Model.MataKuliah"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Mengambil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data </title>
    </head>
    <body>
        <% ArrayList<Mahasiswa> adminSelectList = (ArrayList<Mahasiswa>) request.getAttribute("adminSelectList");
            ArrayList<MataKuliah> adminSelectList2 = (ArrayList<MataKuliah>) request.getAttribute("adminSelectList2");
        %>
    <center>
        <h1>Informasi Mahasiswa </h1>
        <%String nim = adminSelectList.get(0).getNim();
            String nama = adminSelectList.get(0).getNama();
            String alamat = adminSelectList.get(0).getAlamat();
            String tmptlahir = adminSelectList.get(0).getTmpLahir();
            String tgllahir = adminSelectList.get(0).getTglLahir();
            String jurusan = adminSelectList.get(0).getJurusan();
        %>
        <table border=1>
            <tr>
                <td>Nim</td><td><%=nim%></td>
            </tr>
            <tr>
                <td>Nama</td><td><%=nama%></td>
            </tr>
            <tr>
                <td>Alamat</td><td><%=alamat%></td>
            </tr>
            <tr>
                <td>Tempat Lahir</td><td><%=tmptlahir%></td>
            </tr>
            <tr>
                <td>Tanggal Lahir</td><td><%=tgllahir%></td>
            </tr>
            <tr>
                <td>Jurusan</td><td><%=jurusan%></td>
            </tr>
        </table>
        <h2>Daftar KRS Mahasiswa</h2>
        <table border="1">
            <tr>
                <td>Kode Mata Kuliah</td>
                <td>Nama Mata Kuliah</td>
                <td>SKS</td>
            </tr>
            <%
                for (int i = 0; i < adminSelectList2.size(); i++) {
                    String kodemakul = adminSelectList2.get(i).getKd_Mk();
                    String namamakul = adminSelectList2.get(i).getNama_Mk();
                    int sksmakul = adminSelectList2.get(i).getJumlah_SKS();
                    out.print("<tr>"
                            + "<td>" + kodemakul + "</td>"
                            + "<td>" + namamakul + "</td>"
                            + "<td>" + sksmakul + "</td>"
                            + "</tr>");
                }
            %>
        </table>
        <table>
            <tr>
                <td><a href="AdminServlet">Back</a></td>
                <td><a href="index.jsp">Log Out</a></td>
            </tr>
        </table>
    </center>>
</body>
</html>
