/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.OutputInfo;
import Model.Product;
import Model.outputAndProduct;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author vuhai
 */
public class OutputDao {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<outputAndProduct> getTopQuantityOfOutput() {
        List<outputAndProduct> list = new ArrayList<>();
        String query = "select top 5 p.ProductId, oi.Quantity, p.DisplayName \n"
                + "from OutputInfo oi inner join Product p \n"
                + "	on p.ProductId = oi.ProductId \n"
                + "order by Quantity desc";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new outputAndProduct(rs.getInt(1), rs.getInt(2), rs.getString(3)));
            }
        } catch (Exception e) {
            System.out.println("Error:" + e);
        }
        return list;
    }
}
