package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCUtil {
    public static Connection getConnection() {

        final String DBDRIVER = "com.mysql.jdbc.Driver";
        final String DBURL = "jdbc:mysql://localhost:3306/mall?serverTimezone=GMT";
        final String DBUSER = "root";
        final String DBPASS = "1234";
        Connection conn = null;
        try {
            Class.forName(DBDRIVER);
            conn = DriverManager.getConnection(DBURL, DBUSER, DBPASS);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }
}
