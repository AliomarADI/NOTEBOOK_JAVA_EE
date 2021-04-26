package com.example.NOTEBOOK.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    public static Connection createConnection()
    {
        Connection con = null;
        String url = "jdbc:postgresql://localhost:5432/endtermnotebook";
        String username = "postgres"; //PostgreSQL username
        String password = "postgres"; //PostgreSQL password
        System.out.println("************************ In DBConnection.java class ");

        try
        {
//            try
//            {
//                Class.forName("com.postgresql.jdbc.Driver"); //loading MySQL drivers. This differs for database servers
//            }
//            catch (ClassNotFoundException e)
//            {
//                e.printStackTrace();
//            }
            con = DriverManager.getConnection(url, username, password); //attempting to connect to MySQL database
            System.out.println("Printing connection object "+con);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return con;
    }
}
