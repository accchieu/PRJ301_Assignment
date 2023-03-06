/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author vuhai
 */
public class UserModel {
    private String username;
    private String password;
    private String DisplayName;
    private boolean role;

    public UserModel() {
    }

    public UserModel(String username, String password, String DisplayName, boolean role) {
        this.username = username;
        this.password = password;
        this.DisplayName = DisplayName;
        this.role = role;
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

    public String getDisplayName() {
        return DisplayName;
    }

    public void setDisplayName(String DisplayName) {
        this.DisplayName = DisplayName;
    }

    public boolean isRole() {
        return role;
    }

    public void setRole(boolean role) {
        this.role = role;
    }
    
    
}
