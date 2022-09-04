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
public class Category {
    private int id;
    private String name;
    private String desc;

    public static Category find(int id){
        return DatabaseDao.getInstance().getCategoryDao().find(id);
    }
    
    public Category(String name, String desc) {
        this.name = name;
        this.desc = desc;
    }

    public Category(int id, String name, String desc) {
        this.id = id;
        this.name = name;
        this.desc = desc;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    
}
