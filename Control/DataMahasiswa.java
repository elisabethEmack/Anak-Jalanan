/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import Model.Mahasiswa;

/**
 *
 * @author emack
 */
public class DataMahasiswa {

    Connection connection;
    DatabaseConnection database = new DatabaseConnection();

    public ArrayList<Mahasiswa> list() throws SQLException {
        connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        ArrayList<Mahasiswa> mahasiswaList = new ArrayList<Mahasiswa>();
        try {
            connection = database.getConnection();            
            statement = connection.prepareStatement("SELECT * FROM MAHASISWA");            
            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Mahasiswa maha = new Mahasiswa();
                maha.setNim(resultSet.getString("nim"));
                maha.setNama(resultSet.getString("nama"));
                maha.setTmpLahir(resultSet.getString("tempat_lahir"));
                maha.setTglLahir(resultSet.getString("tgl_lahir"));
                maha.setAlamat(resultSet.getString("alamat"));
                maha.setJurusan(resultSet.getString("jurusan"));
                maha.setPassword(resultSet.getString("password"));
                mahasiswaList.add(maha);                                
            }
            System.out.println(mahasiswaList.size()+"");
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
