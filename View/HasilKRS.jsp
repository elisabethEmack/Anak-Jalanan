<%-- 
    Document   : HasilKRS
    Created on : Jun 7, 2016, 1:48:48 PM
    Author     : emack
--%>


<%@page import="Model.Mengambil"%>
<%@page import="Servlet.DataMengambil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.MataKuliah"%>


<%

    ArrayList<String> kode_mk = (ArrayList< String>) session.getAttribute("kodeMakul");
    if (kode_mk == null) {
        kode_mk = new ArrayList<String>();
    }

    ArrayList<String> kelasMakul = (ArrayList< String>) session.getAttribute("kelas");
    if (kelasMakul == null) {
        kelasMakul = new ArrayList<String>();
    }

//    session.getAttribute("namaMakul");

%>

<style type='text/css'> table {border-collapse: collapse} </style>
<table border cellpadding='4' cellspacing='2'>
    <tr>
        <td>Kode Mata Kuliah</td>        
        <td>Nama Mata Kuliah</td>
        <td>SKS</td>
        <td> Hapus </td>
    </tr>
    <form action="HapusMakul" method="post">
        <%  String username = (String) session.getAttribute("username");
            ArrayList<Mengambil> krs = new DataMengambil().list(username);
            int totalSks = 0;
            for (Mengambil dataKrs : krs) {
                MataKuliah makul = dataKrs.getKd_mk();
        %>
        <tr>

            <td><%=makul.getKd_Mk()%></td>
            <td><%=makul.getNama_Mk()%></td>
            <td><%=makul.getJumlah_SKS()%></td>
            <td><input type="checkbox" name="hapus" value="<%= makul.getKd_Mk()%>" /> </td>
                <% totalSks += makul.getJumlah_SKS();
                }%>
        </tr>
        <tr>
        <input type="submit" value="HAPUS" name="hapus" style="float: right"/> </tr>
    </form>
</table>
<p> Total SKS : <%=totalSks%></p>
