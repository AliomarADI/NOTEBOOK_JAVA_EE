package com.example.NOTEBOOK.dao;

import com.example.NOTEBOOK.connection.DBConnection;
import com.example.NOTEBOOK.model.Notebook;
import com.example.NOTEBOOK.model.User;

import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class NotebookDAO {


    //    Create notebook
    public String createNote(Notebook notebook)
    {

        String title = notebook.getTitle();
        String text = notebook.getText();
        int user_id = notebook.getUser_id();

    Connection con = null;
    PreparedStatement preparedStatement = null;
        try
    {
        con = DBConnection.createConnection();
        String query = "insert into notebooks(title,text,user_id) values (?,?,?)";
        preparedStatement = con.prepareStatement(query);

        preparedStatement.setString(1, title);
        preparedStatement.setString(2, text);
        preparedStatement.setInt(3, user_id);

        int i= preparedStatement.executeUpdate();

        if (i!=0)  //Just to ensure data has been inserted into the database
            return "SUCCESS";
    }
        catch(
    SQLException e)
    {
        e.printStackTrace();
    }
        return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
}
}
