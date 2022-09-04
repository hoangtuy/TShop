/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.T_shop.dao;

import java.util.List;
import org.T_shop.model.Product;

/**
 *
 * @author HP
 */
public interface ProductDao {

    public boolean insert(Product product);
    public boolean update(Product product);
    public boolean delete(int id);
    
    public List<Product> all();
    public Product find(int id);
    public List<Product> searchByName(String name);
    public List<Product> findByCategoryId(int categoryId);
    public int countProduct();
   
}
