/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.Category;
import Model.Product;
import Model.Suplier;
import Model.Unit;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author vuhai
 */
public class CategoryDao {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Category> getAll() {
        List<Category> list = new ArrayList<>();
        String query = "select * from Category";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1), rs.getString(2)));
            }
        } catch (Exception e) {
            System.out.println("Error:" + e);
        }
        return list;
    }

    public List<Unit> getAllUnit() {
        List<Unit> list = new ArrayList<>();
        String query = "select * from Unit";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Unit(rs.getInt(1), rs.getString(2)));
            }
        } catch (Exception e) {
            System.out.println("Error:" + e);
        }
        return list;
    }
    
    public List<Suplier> getAllSuplier() {
        List<Suplier> list = new ArrayList<>();
        String query = "select * from Suplier";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Suplier(rs.getInt(1), rs.getString(2)));
            }
        } catch (Exception e) {
            System.out.println("Error:" + e);
        }
        return list;
    }
}
