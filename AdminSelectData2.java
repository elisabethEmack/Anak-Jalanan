/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.Mahasiswa;
import Model.MataKuliah;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Lycorice
 */
public class AdminSelectData2 {
    private String nim;
    
    Connection connection = null;
    DatabaseConnection database = new DatabaseConnection();
    public ArrayList<MataKuliah> list() throws SQLException {
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        ArrayList<MataKuliah> adminSelectList = new ArrayList<MataKuliah>();
        try {
            connection = database.getConnection();            
            statement = connection.prepareStatement(""
            +"SELECT *\n" +
            "FROM matakuliah\n" +
            "WHERE kode \n" +
            "IN (SELECT kode FROM MENGAMBIL WHERE NIM = '"+getNim()+"')");
            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                MataKuliah mk = new MataKuliah();
                mk.setKd_Mk(resultSet.getString("kode"));
                mk.setNama_Mk(resultSet.getString("nama"));
                mk.setJumlah_SKS(resultSet.getInt("sks"));
                adminSelectList.add(mk);                                
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
