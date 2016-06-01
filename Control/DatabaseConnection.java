/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Servlet;

/**
 *
 * @author emack
 */
import java.sql.Connection;
import java.sql.SQLException;
import oracle.jdbc.pool.OracleDataSource;

/**
 *
 * @author basisb19sa
 */
public class DatabaseConnection {
    // Sesuaikan properti jdbcURL dengan basis data anda

    private String jdbcURL = "jdbc:oracle:thin:@localhost:1521:XE";
    private String user = "hr";
    private String password = "emack1234";
    private Connection connection ;

    /**
     * Creates a new instance of UserConnection
     */
    public DatabaseConnection() {
        try {
            OracleDataSource ods;
            ods = new OracleDataSource();
            ods.setURL(jdbcURL);
            connection = ods.getConnection(user, password);
            System.out.println("koneksi ok");
        } catch (SQLException ex) {
            System.out.println("message: " + ex.getMessage());
        }
    }

    public boolean isConnected() {
        if (connection != null) {
            return true;
        } else {
            return false;
        }
    }

    public boolean getClosed() {
        if (isConnected()) {
            try {
                connection.close();
                connection = null;
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            return true;
        } else {
            return false;
        }
    }

    public String getJdbcURL() {
        return jdbcURL;
    }

    public void setJdbcURL(String jdbcURL) {
        this.jdbcURL = jdbcURL;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Connection getConnection() {
        return connection;
    }

    public void setConn(Connection connection) {
        this.connection = connection;
    }
    
    public static void main(String[] args) {
        DatabaseConnection dat=new DatabaseConnection();
    }
}
