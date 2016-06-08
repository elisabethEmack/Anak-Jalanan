/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.Mahasiswa;
import Model.Mahasiswa;
import Model.Mengambil;
import Model.MataKuliah;
import Model.MataKuliah;
import Model.Mengambil;
import Servlet.DatabaseConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author emack
 */
public class DataMengambil {

    Connection connection;
    DatabaseConnection database = new DatabaseConnection();

    public ArrayList<Mengambil> list(String nim) throws SQLException {
        connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        ArrayList<Mengambil> ambilList = new ArrayList<Mengambil>();
        try {
            connection = database.getConnection();
            statement = connection.prepareStatement("SELECT * FROM mengambil where nim = '" + nim + "'");
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Mengambil ambil = new Mengambil();
                Mahasiswa mhs = new Mahasiswa();

                String kode = resultSet.getString("kode");
                MataKuliah mk = DataMataKuliah.getMakulByKode(kode);
                mhs.setNim(resultSet.getString("nim"));
//                mk.setKd_Mk(resultSet.getString("kode"));

                ambil.setNim(mhs);
                ambil.setKd_mk(mk);
                ambilList.add(ambil);
            }
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
        return ambilList;
    }

    public void InsertMakul(String nim, String kode) throws SQLException {
        PreparedStatement stmt = null;
        String sql = "INSERT INTO MENGAMBIL VALUES (?,?)";

        try {
            connection = database.getConnection();
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, nim);
            stmt.setString(2, kode);
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

    public static void DeleteMakul(String nim, String kode) throws SQLException {
        PreparedStatement stmt = null;
        String sql = "DELETE FROM MENGAMBIL WHERE KODE = ? and nim = ?";
        Connection connection = new DatabaseConnection().getConnection();
        try {

            stmt = connection.prepareStatement(sql);
            stmt.setString(2, nim);
            stmt.setString(1, kode);
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
