/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.Admin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author emack
 */
public class DataAdmin {
    Connection connection = null;
    DatabaseConnection database = new DatabaseConnection();
    public ArrayList<Admin> list() throws SQLException {
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        ArrayList<Admin> adminList = new ArrayList<Admin>();
        try {
            connection = database.getConnection();            
            statement = connection.prepareStatement(""
            +"SELECT NIM, SUM(SKS) TOTAL_SKS\n" +
                    "FROM MATAKULIAH\n" +
                    "NATURAL JOIN MENGAMBIL\n" +
                    "WHERE KODE IN\n" +
                    "(SELECT KODE FROM MENGAMBIL)\n" +
                    "GROUP BY NIM");            
            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Admin admin = new Admin();
                admin.setNim(resultSet.getString("NIM"));
                admin.setTotalSKS(resultSet.getInt("TOTAL_SKS"));
                adminList.add(admin);                                
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
        return adminList;
    }
}
