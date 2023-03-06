/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author vuhai
 */
public class Suplier {
    private int suplierId;
    private String suplierName;

    public Suplier() {
    }

    public Suplier(int suplierId, String suplierName) {
        this.suplierId = suplierId;
        this.suplierName = suplierName;
    }

    public int getSuplierId() {
        return suplierId;
    }

    public void setSuplierId(int suplierId) {
        this.suplierId = suplierId;
    }

    public String getSuplierName() {
        return suplierName;
    }

    public void setSuplierName(String suplierName) {
        this.suplierName = suplierName;
    }
    
    
}
