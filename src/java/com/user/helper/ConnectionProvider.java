package com.user.helper;

import java.sql.*;

public class ConnectionProvider {

    public static Connection getConnection() {
        Connection con = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "");

        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;

    }

}
