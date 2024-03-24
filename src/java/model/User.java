/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Nhat Anh
 */
public class User {
    private int id;
    private String username;
    private String password;
    private String roles;
    private String phoneNumber;
    private boolean status;

    public User() {
    }

    public User(int id, String username, String password, String roles, String phoneNumber) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.roles = roles;
        this.phoneNumber = phoneNumber;
    }

    public User(int id, String username, String password, String roles, String phoneNumber, boolean status) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.roles = roles;
        this.phoneNumber = phoneNumber;
        this.status = status;
    }

    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRoles() {
        return roles;
    }

    public void setRoles(String roles) {
        this.roles = roles;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
    
}
