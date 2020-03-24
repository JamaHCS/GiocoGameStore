package model;

public class Accesories extends Product {
    private String type;

    public Accesories(int productId, String productName, float productCost, float productPrice, int productStock, Brand brand, Platform platform, String type) {
        super(productId, productName, productCost, productPrice, productStock, brand, platform);
        this.type = type;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
