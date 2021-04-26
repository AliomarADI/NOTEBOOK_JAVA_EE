package com.example.NOTEBOOK.servlets;

import com.example.NOTEBOOK.dao.NotebookDAO;
import com.example.NOTEBOOK.model.Notebook;
import com.example.NOTEBOOK.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "createNoteServlet", value = "/createNoteServlet")
public class CreateNoteServlet extends HttpServlet {

    public CreateNoteServlet() {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession httpSession = request.getSession();

        User user = (User) httpSession.getAttribute("user");

        Notebook notebook = new Notebook();

        String title = request.getParameter("title");
        String text = request.getParameter("text");

        notebook.setTitle(title);
        notebook.setText(text);
        notebook.setUser_id(user.getId());

        NotebookDAO noteDao = new NotebookDAO();

        String isSuccess = noteDao.createNote(notebook);


        if(isSuccess.equals("SUCCESS"))   //On success, you can display a message to user on Home page
        {
            System.out.println("NOTEBOOK SAVED********************");
            request.getRequestDispatcher("/home.jsp").forward(request, response);
        }
        else   //On Failure, display a meaningful message to the User.
        {
            request.setAttribute("errMessageAboutNote", isSuccess);
            request.getRequestDispatcher("/createNote.jsp").forward(request, response);
        }
    }
}
