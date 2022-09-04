/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.T_shop.dao;

import java.util.List;
import org.T_shop.model.User;

/**
 *
 * @author HP
 */
public interface UserDao {
    public boolean insert(User user);
    public boolean update(User user);
    public boolean delete(int userId);
    
    public List<User> all();
    public User find(int id);
    public User findByEmail(String email);
    public int countUser();
}
