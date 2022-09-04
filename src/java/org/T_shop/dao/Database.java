/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.T_shop.dao;

import org.T_shop.impl.CategoryDaoImpl;
import org.T_shop.impl.OrderDaoImpl;
import org.T_shop.impl.OrderDetailDaoImpl;
import org.T_shop.impl.ProductDaoImpl;
import org.T_shop.impl.UserDaoImpl;

/**
 *
 * @author HP
 */
public class Database extends DatabaseDao {

    @Override
    public UserDao getUserDao() {
        return new UserDaoImpl();
    }

    @Override
    public CategoryDao getCategoryDao() {
        return new CategoryDaoImpl();
    }

    @Override
    public ProductDao getProductDao() {
        return new ProductDaoImpl();
    }

    @Override
    public OrderDao getOrderDao() {
        return new OrderDaoImpl();
    }

    @Override
    public OrderDetailDao getOrderDetailDao() {
        return new OrderDetailDaoImpl();
    }

}

    
