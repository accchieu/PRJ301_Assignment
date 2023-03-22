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
    private String displayName;
    private String suplierAddress;
    private String phone;
    private String email;
    private String moreInfo;

    public Suplier() {
    }

    public Suplier(int suplierId, String displayName, String suplierAddress, String phone, String email, String moreInfo) {
        this.suplierId = suplierId;
        this.displayName = displayName;
        this.suplierAddress = suplierAddress;
        this.phone = phone;
        this.email = email;
        this.moreInfo = moreInfo;
    }

    public int getSuplierId() {
        return suplierId;
    }

    public void setSuplierId(int suplierId) {
        this.suplierId = suplierId;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public String getSuplierAddress() {
        return suplierAddress;
    }

    public void setSuplierAddress(String suplierAddress) {
        this.suplierAddress = suplierAddress;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMoreInfo() {
        return moreInfo;
    }

    public void setMoreInfo(String moreInfo) {
        this.moreInfo = moreInfo;
    }
    
    
    
    
}
