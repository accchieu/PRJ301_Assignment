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
    
        public void deleteUnit(int id) {
        try {
            conn = new DBContext().getConnection();
            PreparedStatement statement = conn.prepareStatement("DELETE Unit WHERE UnitId=" + id);
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
    
        public void insertUnit(String UName) {
        try {
            String sql = "insert into\n"
                    + "Unit\n"
                    + "values(?)";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, UName);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error:" + e);
        }
    }

    public void insertSuplier(Suplier s) {
        try {
            String sql = "insert into\n"
                    + "Suplier\n"
                    + "values(?,?,?,?,?)";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, s.getDisplayName());
            ps.setString(2, s.getSuplierAddress());
            ps.setString(3, s.getPhone());
            ps.setString(4, s.getEmail());
            ps.setString(5, s.getMoreInfo());
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error jcs:" + e);
        }
    }

    public void updateSuplier(Suplier s) {
        String query = "update Suplier set DisplayName = ?, SuplierAddress = ? , Phone = ?, Email = ?, MoreInfo = ? where SuplierId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, s.getDisplayName());
            ps.setString(2, s.getSuplierAddress());
            ps.setString(3, s.getPhone());
            ps.setString(4, s.getEmail());
            ps.setString(5, s.getMoreInfo());
            ps.setInt(6, s.getSuplierId());

            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Errorew: " + e);
        }
    }
//    
//    public static void main(String[] args) {
//        CatSupUnitDao dao = new CatSupUnitDao();
//        Suplier s = new Suplier(2005, "ưdw", "e", "adf", "ewef", "wefw");
//        dao.updateSuplier(s);
//        System.out.println("success");
//        
//    }

    public Suplier getSuplierById(String id) {
        String sql = "select * from Suplier Where SuplierId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Suplier(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));

            }
        } catch (Exception e) {
        }
        return null;

    }

}
