/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Nhat Anh
 */
public class Table {
    private int id;
    private int status; // status 0: chua xong, status 1: da xong
    private int orderStatus;
    private int urge;
    private String code;

    public Table() {
    }

    public Table(int id, int status) {
        this.id = id;
        this.status = status;
    }

    public Table(int id, int status, int orderStatus) {
        this.id = id;
        this.status = status;
        this.orderStatus = orderStatus;
    }

    public Table(int id, int status, int orderStatus, int urge, String code) {
        this.id = id;
        this.status = status;
        this.orderStatus = orderStatus;
        this.urge = urge;
        this.code = code;
    }
    
    

    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(int orderStatus) {
        this.orderStatus = orderStatus;
    }

    public int getUrge() {
        return urge;
    }

    public void setUrge(int urge) {
        this.urge = urge;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
    
    
}
