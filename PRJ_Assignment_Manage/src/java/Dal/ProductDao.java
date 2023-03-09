/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author vuhai
 */
public class ProductDao {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAll() {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getFloat(8)));
            }
        } catch (Exception e) {
            System.out.println("Error:" + e);
        }
        return list;
    }

    public void deleteProduct(int id) {
        try {
            conn = new DBContext().getConnection();
            PreparedStatement statement = conn.prepareStatement("DELETE Product WHERE ProductId=" + id);
            statement.execute();
        } catch (Exception e) {
            System.out.println("Error:" + e);
        }
    }

    public void insertProduct(int CategoryId, String DisplayName, int UnitId, int SuplierId, int Total, String Image, float Price) {
        try {
            String sql = "insert into\n"
                    + "Product\n"
                    + "values(?,?,?,?,?,?,?)";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, CategoryId);
            ps.setString(2, DisplayName);
            ps.setInt(3, UnitId);
            ps.setInt(4, SuplierId);
            ps.setInt(5, Total);
            ps.setString(6, Image);
            ps.setFloat(7, Price);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error:" + e);
        }
    }

    public void updateProduct(Product p) {
        String query = "update Product set CategoryId = ?, DisplayName = ? , UnitId = ?, SuplierId = ?, Total = ?, [Image] = ?, [Price] = ? where ProductId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, p.getCategoryId());
            ps.setString(2, p.getDisplayName());
            ps.setInt(3, p.getUnitId());
            ps.setInt(4, p.getSuplierId());
            ps.setInt(5, p.getTotal());
            ps.setString(6, p.getImage());
            ps.setFloat(7, p.getPrice());
            ps.setInt(8, p.getProductId());

            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
    }

    public Product getProductById(String id) {
        String sql = "select * from Product Where ProductId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getFloat(8));

            }
        } catch (Exception e) {
        }
        return null;

    }

}
