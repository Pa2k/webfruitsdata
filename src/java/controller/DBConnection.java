/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import model.Fruits;

/**
 *
 * @author Advice KH
 */
public class DBConnection {

    public boolean insertNewFruits(Fruits fruits) {
        boolean result = false;
        Connection connection = null;
        try {
            // below two lines are used for connectivity.
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/pak",
                    "root", "12345");

            Statement statement;
            statement = connection.createStatement();

            String query = "INSERT INTO fruits "
                    + "(name, color, taste, price) "
                    + "VALUES('"
                    + fruits.getName() + "','"
                    + fruits.getColor() + "','"
                    + fruits.getTaste() + "',"
                    + fruits.getPrice() + ")";
            System.out.println("........SQL: " + query);

            int i = statement.executeUpdate(query);	// executeUpdate returns row count ****
            if (i != 0) {
                result = true;
            }
            statement.close();
            connection.close();
        } catch (Exception exception) {
            System.out.println(exception);
        }

        return result;
    }
}
