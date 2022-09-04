/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.T_shop.db;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author HP
 */
public class MySQLDriver {

    private static final String DB_URL = "jdbc:mysql://localhost:3306/t-shop";
    private static final String DB_USER = "root";
    private static final String DB_PASS = "Smile@999666";

    private static MySQLDriver instance;

    private MySQLDriver() {
    }

    public static MySQLDriver getInstance() {
        if (instance == null) {
            instance = new MySQLDriver();
        }
        return instance;
    }

    public Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}
