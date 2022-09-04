/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package org.T_shop;


import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

import org.T_shop.dao.DatabaseDao;
import org.T_shop.dao.UserDao;
import org.T_shop.model.User;
import org.T_shop.util.Flash;


/**
 *
 * @author HP
 */
public class LoginServlet extends BaseServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        if (session.getAttribute("user") != null) {
            response.sendRedirect("HomeServlet");
        } else {
            Flash.init(request.getSession());
            request.setAttribute("error", Flash.getError());
            request.getRequestDispatcher("login.jsp").forward(request, response);
            Flash.pushError("");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserDao userDao = DatabaseDao.getInstance().getUserDao();

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User findUser = userDao.findByEmail(email);
        if (findUser != null) {
            if (findUser.getPassword().equals(password)) {
                //Set session login
                HttpSession session = request.getSession();
                session.setAttribute("user", findUser);
                if(findUser.getRole().equals("Admin") ){
                    response.sendRedirect("DashboardServlet");
                }
                else{
                    response.sendRedirect("HomeServlet");
                }
            } else {
                response.sendRedirect("LoginServlet");
                Flash.init(request.getSession());
                Flash.pushError("Password not correct");
            }
        } else {
            Flash.init(request.getSession());
            Flash.pushError("Email not exist");
            response.sendRedirect("LoginServlet");
        }

    }
}
