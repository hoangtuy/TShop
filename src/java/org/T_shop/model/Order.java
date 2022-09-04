/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.T_shop.model;

import org.T_shop.dao.DatabaseDao;

/**
 *
 * @author HP
 */
public class Order {
    public static int CODE_LENGHT = 8;
    
    private int id;
    private String code;
    private String status;
    private int userId;

    public static Order find(int id){
        return DatabaseDao.getInstance().getOrderDao().find(id);
    }
    
    public Order(String code, String status, int userId) {
        this.code = code;
        this.status = status;
        this.userId = userId;
    }

    public Order(int id, String code, String status, int userId) {
        this.id = id;
        this.code = code;
        this.status = status;
        this.userId = userId;
    }



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    
}
