/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.Admin;
import Model.Mahasiswa;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Lycorice
 */
public class AdminSelectData {
    private String nim;
    
    Connection connection = null;
    DatabaseConnection database = new DatabaseConnection();
    public ArrayList<Mahasiswa> list() throws SQLException {
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        ArrayList<Mahasiswa> adminSelectList = new ArrayList<Mahasiswa>();
        try {
            connection = database.getConnection();            
            statement = connection.prepareStatement(""
            +"SELECT *\n" +
                    "FROM Mahasiswa\n" +
                    "WHERE NIM = "+getNim());            
            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Mahasiswa mhs = new Mahasiswa();
                mhs.setNim(resultSet.getString("nim"));
                mhs.setNama(resultSet.getString("nama"));
                mhs.setAlamat(resultSet.getString("alamat"));
                mhs.setTmpLahir(resultSet.getString("tempat_lahir"));
                mhs.setTglLahir(resultSet.getString("tgl_lahir"));
                mhs.setJurusan(resultSet.getString("jurusan"));
                adminSelectList.add(mhs);
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
        return adminSelectList;
    }

    public String getNim() {
        return nim;
    }

    public void setNim(String nim) {
        this.nim = nim;
    }
}
