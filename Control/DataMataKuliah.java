/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.MataKuliah;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author emack
 */
public class DataMataKuliah {

    Connection connection;
    DatabaseConnection database = new DatabaseConnection();

    public ArrayList<MataKuliah> list() throws SQLException {
        connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        ArrayList<MataKuliah> mahasiswaList = new ArrayList<MataKuliah>();
        try {
            connection = database.getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery("SELECT * FROM matakuliah");
//            System.err.println(resultSet.getFetchSize());
//            System.err.println(resultSet.next());
            while (resultSet.next()) {
                System.err.println("asdasd");
                MataKuliah maha = new MataKuliah();
                maha.setNama_Mk(resultSet.getString("nama"));
                maha.setKd_Mk(resultSet.getString("kode"));
                maha.setJumlah_SKS(resultSet.getInt("sks"));

                mahasiswaList.add(maha);
            }
//            System.out.println(mahasiswaList.size()+"");
        } finally {
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException ignore) {
                }
            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException ignore) {
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException ignore) {
                }
            }
        }
        return mahasiswaList;
    }

    public static MataKuliah getMakulByKode(String kode) throws SQLException {

        Connection c = new DatabaseConnection().getConnection();
        PreparedStatement s = c.prepareStatement("select * from matakuliah where kode=?");
        s.setString(1, kode);
        ResultSet rs = s.executeQuery();
        if (rs.next()) {
            MataKuliah res = new MataKuliah();
            res.setKd_Mk(kode);
            res.setNama_Mk(rs.getString("nama"));
            res.setJumlah_SKS(rs.getInt("sks"));
            return res;
        }
        return null;
    }

    public void updateMhs(String nim, String nama, String tempatLahir,
            String tgl_lahir, String alamat, String jurusan, String password)
            throws ClassNotFoundException, SQLException {

        PreparedStatement stmt = null;
        String sql = "UPDATE MAHASISWA "
                + "SET nim=?, nama = ?, tempat_lahir = ?, "
                + " tgl_lahir = ? " + " alamat = ? " + " jurusan = ? "
                + " password = ? "
                + "WHERE nim = ? ";

        try {
            connection = database.getConnection();
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, nim);
            stmt.setString(2, nama);
            stmt.setString(3, tempatLahir);
            stmt.setString(4, tgl_lahir);
            stmt.setString(5, alamat);
            stmt.setString(6, jurusan);
            stmt.setString(7, password);
            stmt.setString(8, nim);
            stmt.executeUpdate();

        } finally {
            if (connection != null) {
                connection.close();
            }

            if (stmt != null) {
                stmt.close();
            }
        }
    }
}
