package com.example.nuoiemproject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



//Đổi tên BaseRepo -> BaseRepository nha mọi người



//<<<<<<< HEAD:nuoi-em-project/src/main/java/com/example/nuoiemproject/BaseRepository.java
public class BaseRepo {
<<<<<<< HEAD
//<<<<<<< HEAD
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/nuoi_em_db";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "210100";
//=======
//    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/nuoi_em_db_test";
//    private static final String USERNAME = "root";
////<<<<<<< HEAD
////<<<<<<< HEAD
//    private static final String PASSWORD = "thienbao";
=======
    private static final String JDBC_URL = "jdbc:mysql://localhost:3305/nuoi_em_db";
    private static final String USERNAME = "root";
//<<<<<<< HEAD
////<<<<<<< HEAD
////<<<<<<< HEAD
    private static final String PASSWORD = "Mylien2009";
//=======
//    private static final String PASSWORD = "210100";
//>>>>>>> f71cfc33e70da6a67e3e113c4d2ccdad301826d8
>>>>>>> 561301bd54032f0418f4244d617ddf10f5de05cd

    //=======
//    public class BaseRepo {
//        private static final String JDBC_URL = "jdbc:mysql://localhost:3305/nuoi_em_db";
//        private static final String USERNAME = "root";
//        private static final String PASSWORD = "Mylien2009";
//>>>>>>> 2b43c5c8cb9394e63c2db139b2abe57774c226f0:nuoi-em-project/src/main/java/com/example/nuoiemproject/BaseRepo.java
//=======
//    private static final String PASSWORD = "toilatoi09";
//>>>>>>> af0389e3572866dc7d0885baa408203d6910ebb1
//=======
//    private static final String PASSWORD = "210100";
//>>>>>>> 3527189bc00948a4430065eccd5191a48aa5d3b9
<<<<<<< HEAD
//>>>>>>> 334abf1ff553e2fa0e44759be0a06b37b7e32a2a
=======
>>>>>>> 561301bd54032f0418f4244d617ddf10f5de05cd

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

