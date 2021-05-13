package com.example.NOTEBOOK.servlets;

import com.example.NOTEBOOK.dao.NotebookDAO;
import com.example.NOTEBOOK.model.Notebook;
import com.example.NOTEBOOK.model.User;
import com.sun.tools.javac.util.JCDiagnostic;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddingNote", value = "/AddingNote")
public class AddNoteToList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession http = request.getSession();
        User user = (User) http.getAttribute("user");

        Notebook notebook = new Notebook();
        NotebookDAO noteDAO = new NotebookDAO();

        notebook.setTitle("new Title");
        notebook.setText("Text");
        notebook.setUser_id(user.getId());
        String isSuccess = noteDAO.createNote(notebook);

        if(isSuccess.equals("SUCCESS")){
            user.addNote(notebook);
            request.getRequestDispatcher("/createNote.jsp").forward(request, response);
        }else{
            System.out.println("AddNoteToList.doPost: error");
            request.getRequestDispatcher("/createNote.jsp").forward(request, response);
        }

    }
}
