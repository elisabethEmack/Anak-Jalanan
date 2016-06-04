package Servlet;

import Model.Mahasiswa;
import Model.MataKuliah;
import Model.Mengambil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Lycorice
 */
public class DataMengambil {
    
    Connection connection;
    DatabaseConnection database = new DatabaseConnection();

    public ArrayList<Mengambil> list() throws SQLException {
        connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        ArrayList<Mengambil> mengambilList = new ArrayList<Mengambil>();
        try {
            connection = database.getConnection();            
            statement = connection.prepareStatement("SELECT * FROM Mengambil");            
            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Mengambil ambil = new Mengambil();
                ambil.setNim((Mahasiswa) resultSet.getObject("nim"));
                ambil.setKd_mk((MataKuliah) resultSet.getObject("kd_mk"));
                mengambilList.add(ambil);                                
            }
            System.out.println(mengambilList.size()+"");
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
        return mengambilList;
    }

    public void updateAmbil(String nim, String kd_mk)
            throws ClassNotFoundException, SQLException {

        PreparedStatement stmt = null;
        String sql = "UPDATE MENGAMBIL SET nim=?, kd_mk = ?"
                + "WHERE nim = ? ";

        try {
            connection = database.getConnection();
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, nim);
            stmt.setString(2, kd_mk);
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
