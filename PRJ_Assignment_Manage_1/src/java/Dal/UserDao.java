/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

/**
 *
 * @author vuhai
 */
import Model.UserModel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    

    public UserModel login(String username, String pass) {
        String query = "Select * from Users where UserName = ? and UserPassword = ? ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new UserModel(rs.getString(1), rs.getString(2), rs.getString(3), rs.getBoolean(4));
            }
        } catch (Exception e) {
            System.out.println("Connection error! " + e);
        }
        return null;
    }

    public boolean getRole(String username) {
        String query = "Select UserRole from Users where UserName = ? ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setBoolean(1, true);

            rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getBoolean(1);
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return false;
    }

    public boolean findUserByUsername(String userName) {
        String query = "select * from Users where UserName = ? ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userName);
            rs = ps.executeQuery();

            if (rs.next()) {
                return true;
            }
            return false;
        } catch (Exception e) {
            System.out.println("Error: " + e);
            return false;
        }
    }
}
