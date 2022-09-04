/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.T_shop.dao;

import java.util.List;
import org.T_shop.model.Order;

/**
 *
 * @author HP
 */

public interface OrderDao {       
    public boolean insert(Order order);
    public boolean update(Order order);
    public boolean delete(int id);
    
    public List<Order> all();
    public Order find(int id);
    public Order findByCode(String code);
    public int countOrder();
    public int countPendingOrder();
}
