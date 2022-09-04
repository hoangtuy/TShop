/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package org.T_shop;


import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import org.T_shop.dao.Database;
import org.T_shop.dao.DatabaseDao;

/**
 *
 * @author HP
 */

public class BaseServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        super.init(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
        DatabaseDao.init(new Database());
    }

}
