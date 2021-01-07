package com.techblog.helpher;

import java.sql.*;

public class DbConnection {

    public static Connection getConnection()
    { 
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog","root","");
            return con;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        
    } 
}
