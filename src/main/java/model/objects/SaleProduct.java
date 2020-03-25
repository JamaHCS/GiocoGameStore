package model.objects;

import java.util.Objects;

public class SaleProduct {
    private int saleId;
    private int productId;
    private int quantity;
    private Product product;
    private float price = Objects.requireNonNull(product).getProductPrice();
    private String status;

    public SaleProduct(int saleId, int productId, int quantity, Product product, float price, String status) {
        this.saleId = saleId;
        this.productId = productId;
        this.quantity = quantity;
        this.product = product;
        this.price = price;
        this.status = status;
    }

    public int getSaleId() {
        return saleId;
    }

    public void setSaleId(int saleId) {
        this.saleId = saleId;
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

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
