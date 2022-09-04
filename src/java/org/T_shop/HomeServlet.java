/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package org.T_shop;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import org.T_shop.dao.DatabaseDao;
import org.T_shop.dao.ProductDao;
import org.T_shop.model.Product;
import org.T_shop.util.Flash;

/**
 *
 * @author HP
 */
public class HomeServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ProductDao productDao = DatabaseDao.getInstance().getProductDao();
        List<Product> productList = productDao.all();
        HttpSession session = request.getSession();
        Flash flash = new Flash();
        if (session.getAttribute("user") != null){
            flash.setDropDown("dropdown");
        }else{
            flash.setDropDown("");
        }
        
        request.setAttribute("productList", productList);
        request.setAttribute("dropdown", flash.getDropDown());
        request.getRequestDispatcher("home.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
