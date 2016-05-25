<%-- 
    Document   : TampilanMHS
    Created on : May 22, 2016, 1:09:41 PM
    Author     : HP
--%>

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
                    <tr>
                        <td> NIM </td>
                        <td> <input type="text" name="nim" value="" size="25" /> </td>
                        <td> IPK </td>
                        <td> <input type="text" name="ipk" value="" size="5" /> </td>
                    </tr>
                    <tr>
                        <td> Nama Mahasiswa </td>
                        <td> <input type="text" name="nama" value="" size="25" /> </td>
                        <td> IPS </td>
                        <td> <input type="text" name="ips" value="" size="5" /> </td>
                    </tr>
                    <tr>
                        <td> Dosen Pembimbing </td>
                        <td> <input type="text" name="namaDosen" value="" size="25" /> </td>
                        <td> SKS Maks </td>
                        <td> <input type="text" name="sksMaks" value="" size="5" /> </td>
                    </tr>
                    <tr>
                        <td> E-mail </td>
                        <td> <input type="text" name="email" value="" size="25" /> </td>
                        <td> Toleransi </td>
                        <td> <input type="text" name="toleransi" value="" size="5" /> </td>
                    </tr>
                </table>
            </fieldset>
            <fieldset> <legend>Pilih Mata Kuliah</legend>
                <table cellpadding='4' cellspacing='2'>
                    <tr> 
                        <td> <input  type="submit" value="Tambah" name="tambah" /></td>
                        <td> <input type="submit" value="Hapus" name="hapus" /></td>
                    </tr>
                    <tr>
                        <td> Mata Kuliah </td>
                        <td><select name="Matakuliah">
                                <option value="pbo1">PBO1</option>
                                <option value="strukDat1">Struktur Data 1</option>
                                <option value="StrukDat2"> Struktur Data 2</option>
                                <option value="PemrogWeb">Pemrograman WEB</option>
                                <option value="Analog">Analisis Algoritma</option>
                            </select></td>
                        <td>Kelas</td>
                        <td><select name="kelas">
                                <option value="A">A</option>
                                <option value="B">B</option>
                                <option value="C">C</option>
                                <option value="D">D</option>
                            </select></td>
                    </tr>
                </table>
            </fieldset>
            <fieldset> <legend>Mata kuliah yang diambil</legend> 
                <style type='text/css'> table {border-collapse: collapse} </style>
                <table border cellpadding='4' cellspacing='2'>
                    <tr>
                        <td>Kode</td>
                        <td>Nama Mata Kuliah</td>
                        <td>Kelas</td>
                        <td>SKS</td>
                        <td>Nama Dosen</td>
                        <td>Hari 1</td>
                    </tr>
                </table>
                <p> Jumlah Mata Kuliah : </p>
                <p> Total SKS : </p>
            </fieldset>
    </body>
</html>
