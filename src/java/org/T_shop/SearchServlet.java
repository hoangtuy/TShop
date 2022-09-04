/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package org.T_shop;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import org.T_shop.dao.DatabaseDao;
import org.T_shop.dao.ProductDao;
import org.T_shop.model.Product;

/**
 *
 * @author HP
 */
public class SearchServlet extends BaseServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductDao productDao = DatabaseDao.getInstance().getProductDao();
        List<Product> productList = null;
        if (request.getParameter("productName") == null) {
            productList = productDao.all();
        } else {
            String productName = request.getParameter("productName");
            productList = productDao.searchByName(productName);
        }

        request.setAttribute("productList", productList);
        request.getRequestDispatcher("category.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
