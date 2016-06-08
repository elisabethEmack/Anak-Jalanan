/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.Mahasiswa;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author emack
 */
public class DataAdmin2 {
    Connection connection = null;
    DatabaseConnection database = new DatabaseConnection();
    public ArrayList<Mahasiswa> list() throws SQLException {
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        ArrayList<Mahasiswa> adminList2 = new ArrayList<Mahasiswa>();
        try {
            connection = database.getConnection();            
            statement = connection.prepareStatement(""
            +"SELECT NAMA\n" +
                "FROM MAHASISWA\n" +
                "JOIN MENGAMBIL ON MENGAMBIL.NIM = MAHASISWA.NIM\n" +
                "WHERE MAHASISWA.NIM = MENGAMBIL.NIM\n" +
                "GROUP by NAMA");            
            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Mahasiswa mhs = new Mahasiswa();
                mhs.setNama(resultSet.getString("NAMA"));
                adminList2.add(mhs);                                
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
        return adminList2;
    }
}
