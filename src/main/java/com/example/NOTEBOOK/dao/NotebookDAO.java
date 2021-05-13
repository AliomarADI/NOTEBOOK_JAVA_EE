package com.example.NOTEBOOK.dao;

import com.example.NOTEBOOK.connection.DBConnection;
import com.example.NOTEBOOK.model.Notebook;
import com.example.NOTEBOOK.model.User;
import com.sun.tools.javac.util.JCDiagnostic;

import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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

    public List<Notebook> getByUserId(User user)throws SQLException,
            ClassNotFoundException{
        Connection connection = DBConnection.createConnection();
        String sql = "SELECT * FROM notebooks WHERE user_id = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setInt(1, user.getId());

        List<Notebook> notebooks = new ArrayList<>();

        try {
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Notebook notebook = new Notebook();
                notebook.setId(rs.getInt("id"));
                notebook.setTitle(rs.getString("title"));
                notebook.setText(rs.getString("text"));
                notebook.setUser_id(rs.getInt("user_id"));
                notebooks.add(notebook);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closePrepareStatement(statement);
        }
        return notebooks;
    }

    private void closePrepareStatement(PreparedStatement statement) {
        if (statement != null) {
            try {
                statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public String updateNote(Notebook notebook)
    {
        System.out.println("Notebooook: " + notebook.getId() + notebook.getTitle()+ notebook.getText());

        String title = notebook.getTitle();
        String text = notebook.getText();
        int user_id = notebook.getUser_id();
        int id = notebook.getId();


        Connection con = null;
        PreparedStatement preparedStatement = null;
        try
        {
            con = DBConnection.createConnection();

            String update_query = "update notebooks set title = ?, text = ? where id = ?";
            preparedStatement = con.prepareStatement(update_query);

            preparedStatement.setString(1, title);
            preparedStatement.setString(2, text);
            preparedStatement.setInt(3, id);


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

    public Notebook getNotebook(String title, String text) throws SQLException,
            ClassNotFoundException {

        Connection connection = DBConnection.createConnection();
        String sql = "SELECT * FROM notebooks WHERE title = ? and text = ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, title);
        statement.setString(2, text);

        ResultSet result = statement.executeQuery();

        Notebook notebook = new Notebook();

        if (result.next()) {
            notebook.setId(result.getInt("id"));
            notebook.setTitle(result.getString("title"));
            notebook.setText(result.getString("text"));
        }

        connection.close();

        return notebook;
    }


}
