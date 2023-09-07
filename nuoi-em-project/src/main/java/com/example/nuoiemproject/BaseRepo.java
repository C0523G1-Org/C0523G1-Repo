package com.example.nuoiemproject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



//Đổi tên BaseRepo -> BaseRepository nha mọi người



//<<<<<<< HEAD:nuoi-em-project/src/main/java/com/example/nuoiemproject/BaseRepository.java
public class BaseRepo {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/nuoi_em_db";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "210100";


    public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
        return connection;
    }
}

