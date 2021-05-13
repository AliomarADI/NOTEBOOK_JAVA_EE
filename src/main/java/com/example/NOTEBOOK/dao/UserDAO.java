package com.example.NOTEBOOK.dao;

import com.example.NOTEBOOK.connection.DBConnection;
import com.example.NOTEBOOK.model.Notebook;
import com.example.NOTEBOOK.model.User;

import java.sql.*;
import java.util.List;

public class UserDAO {

    public User checkLogin(String username, String password) throws SQLException,
            ClassNotFoundException {

        Connection connection = DBConnection.createConnection();
        String sql = "SELECT * FROM users WHERE username = ? and password = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, username);
        statement.setString(2, password);

        ResultSet result = statement.executeQuery();

        User user = null;

        if (result.next()) {
            user = new User();
            user.setId(result.getInt("id"));
            user.setUsername(result.getString("username"));
            user.setPassword(result.getString("password"));
        }
        // return to user list of notebooks
        NotebookDAO notebookDAO = new NotebookDAO();
        user.setNotebooks(notebookDAO.getByUserId(user));

        connection.close();

        return user;
    }



    //    REGISTRATION
    public String registerUser(User registerBean)
    {

        String username = registerBean.getUsername();
        String password = registerBean.getPassword();

        Connection con = null;
        PreparedStatement preparedStatement = null;
        try
        {
            con = DBConnection.createConnection();
            String query = "insert into users(username,password) values (?,?)"; //Insert user details into the table 'USERS'
            preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data

            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);

            int i= preparedStatement.executeUpdate();

            if (i!=0)  //Just to ensure data has been inserted into the database
                return "SUCCESS";
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
        return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
    }


}
