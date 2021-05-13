package com.example.NOTEBOOK.servlets;

import com.example.NOTEBOOK.dao.NotebookDAO;
import com.example.NOTEBOOK.model.Notebook;
import com.example.NOTEBOOK.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "createNoteServlet", value = "/createNoteServlet")
public class CreateNoteServlet extends HttpServlet {

    public CreateNoteServlet() {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // здесь напишем геттер ноутбук объекта
        HttpSession session = request.getSession();

        String title = request.getParameter("titleInput");
        String text = request.getParameter("textInput");

        request.setAttribute("title",title);
        request.setAttribute("text",text);


        RequestDispatcher dispatcher = request.getRequestDispatcher("/createNote.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession httpSession = request.getSession();

        User user = (User) httpSession.getAttribute("user");

        NotebookDAO noteDao = new NotebookDAO();

        String title = request.getParameter("title");
        String text = request.getParameter("text");
        String id = request.getParameter("id");

        int x = 0;
        if(id!=null){
            try{
                x = Integer.parseInt(id);
            }catch(Exception e){
                System.out.println("CreateNoteServlet.doPost");
                System.out.println("ERROR WITH CONVERT");
            }

        }

        Notebook notebook = new Notebook();

        notebook.setId(x); // x its id
        notebook.setTitle(title);
        notebook.setText(text);
        notebook.setUser_id(user.getId());

        System.out.println("Notebook epta: " + notebook.toString());

        String isSuccess = noteDao.updateNote(notebook);


        if(isSuccess.equals("SUCCESS"))   //On success, you can display a message to user on Home page
        {
            System.out.println("NOTEBOOK SAVED********************");
            request.getRequestDispatcher("/createNote.jsp").forward(request, response);
        }
        else   //On Failure, display a meaningful message to the User.
        {
            request.setAttribute("errMessageAboutNote", isSuccess);
            request.getRequestDispatcher("/createNote.jsp").forward(request, response);
        }
    }
}
