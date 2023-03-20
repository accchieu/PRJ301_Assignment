/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author vuhai
 */
public class OutputInfo {
    private int OutputInfoId;
    private int ProductId;
    private int OutputId;
    private float OutputPrice;
    private int Quantity;

    public OutputInfo() {
    }

    public OutputInfo(int OutputInfoId, int ProductId, int OutputId, float OutputPrice, int Quantity) {
        this.OutputInfoId = OutputInfoId;
        this.ProductId = ProductId;
        this.OutputId = OutputId;
        this.OutputPrice = OutputPrice;
        this.Quantity = Quantity;
    }

    public int getOutputInfoId() {
        return OutputInfoId;
    }

    public void setOutputInfoId(int OutputInfoId) {
        this.OutputInfoId = OutputInfoId;
    }

    public int getProductId() {
        return ProductId;
    }

    public void setProductId(int ProductId) {
        this.ProductId = ProductId;
    }

    public int getOutputId() {
        return OutputId;
    }

    public void setOutputId(int OutputId) {
        this.OutputId = OutputId;
    }

    public float getOutputPrice() {
        return OutputPrice;
    }

    public void setOutputPrice(float OutputPrice) {
        this.OutputPrice = OutputPrice;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int Quantity) {
        this.Quantity = Quantity;
    }
    
    
}
