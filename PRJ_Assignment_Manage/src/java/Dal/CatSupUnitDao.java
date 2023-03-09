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
public class CatSupUnitDao {

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
                list.add(new Suplier(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6)));
            }
        } catch (Exception e) {
            System.out.println("Error:" + e);
        }
        return list;
    }

    public void deleteCategory(int id) {
        try {
            conn = new DBContext().getConnection();
            PreparedStatement statement = conn.prepareStatement("DELETE Category WHERE CategoryId=" + id);
            statement.execute();
        } catch (Exception e) {
            System.out.println("Error:" + e);
        }
    }

    public void deleteSuplier(int id) {
        try {
            conn = new DBContext().getConnection();
            PreparedStatement statement = conn.prepareStatement("DELETE Suplier WHERE SuplierId=" + id);
            statement.execute();
        } catch (Exception e) {
            System.out.println("Error:" + e);
        }
    }

    public void insertCategory(String CatName) {
        try {
            String sql = "insert into\n"
                    + "Category\n"
                    + "values(?)";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, CatName);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error:" + e);
        }
    }

    public void insertSuplier(String SuplierName) {
        try {
            String sql = "insert into\n"
                    + "Suplier\n"
                    + "values(?)";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, SuplierName);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error jcs:" + e);
        }
    }
}
