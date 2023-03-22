/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author vuhai
 */
public class outputBill {

    private int productId;
    private int quantity;
    private String displayName;
    private int id;
    private float tongBill;

    public outputBill() {
    }

    public outputBill(int productId, int quantity, String displayName, int id, float tongBill) {
        this.productId = productId;
        this.quantity = quantity;
        this.displayName = displayName;
        this.id = id;
        this.tongBill = tongBill;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public float getTongBill() {
        return tongBill;
    }

    public void setTongBill(float tongBill) {
        this.tongBill = tongBill;
    }
    
    
}
