package com.example.nuoiemproject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



//Đổi tên BaseRepo -> BaseRepository nha mọi người



//<<<<<<< HEAD:nuoi-em-project/src/main/java/com/example/nuoiemproject/BaseRepository.java
public class BaseRepo {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/nuoi_em_db";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "beatbox1202";
//=======
//=======
//>>>>>>> ac248c9225b16f0d1a8fca0615aaa6a49d92e5c3
////<<<<<<< HEAD
//    private static final String JDBC_URL = "jdbc:mysql://localhost:3305/nuoi_em_db";
////=======
////    private static final String JDBC_URL = "jdbc:mysql://localhost:3305/nuoi_em_db";
////>>>>>>> 60fe5c3843b75b4cd3660ec0e2c2b6c6eaf8277e
//    private static final String USERNAME = "root";
//////<<<<<<< HEAD
//////<<<<<<< HEAD
//    private static final String PASSWORD = "Mylien2009";
//<<<<<<< HEAD
//>>>>>>> 4de9294dafd9ebda1f35d7f852fa124a1822bd4f
//=======
//>>>>>>> ac248c9225b16f0d1a8fca0615aaa6a49d92e5c3
////=======
////    private static final String JDBC_URL = "jdbc:mysql://localhost:3305/nuoi_em_db";
////    private static final String USERNAME = "root";
////    private static final String PASSWORD = "Mylien2009";
////>>>>>>> 33fd618f8d75d778524b91047eba6552ca0a58a0


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

