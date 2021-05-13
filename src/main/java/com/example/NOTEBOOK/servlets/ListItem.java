package com.example.NOTEBOOK.servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ListItemServlet", value = "/ListItemServlet")
public class ListItem extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        String title = request.getParameter("title");
        String text = request.getParameter("text");

        request.setAttribute("title",title);
        request.setAttribute("text",text);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/createNote.jsp");
        dispatcher.forward(request, response);
    }
}
