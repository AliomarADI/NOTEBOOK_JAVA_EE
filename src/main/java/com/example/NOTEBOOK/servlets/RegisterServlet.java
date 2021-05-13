package com.example.NOTEBOOK.servlets;

import com.example.NOTEBOOK.dao.UserDAO;
import com.example.NOTEBOOK.model.Notebook;
import com.example.NOTEBOOK.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "registerServlet", value = "/registerServlet")
public class RegisterServlet extends HttpServlet {


    public RegisterServlet() {
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Copying all the input parameters in to local variables

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User registerBean = new User();
        //Using Java Beans - An easiest way to play with group of related data
        ArrayList<Notebook> notebooks = new ArrayList<>();


        registerBean.setUsername(username);
        registerBean.setPassword(password);
        registerBean.setNotebooks(notebooks);

        UserDAO registerDao = new UserDAO();

        //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
        String userRegistered = registerDao.registerUser(registerBean);

        if(userRegistered.equals("SUCCESS"))   //On success, you can display a message to user on Home page
        {
            request.getRequestDispatcher("/home.jsp").forward(request, response);
        }
        else   //On Failure, display a meaningful message to the User.
        {
            request.setAttribute("errMessage", userRegistered);
            request.getRequestDispatcher("/register.jsp").forward(request, response);
        }
    }
}
