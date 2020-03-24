package model;

public class Consoles extends Product{
    private String model;
    private float capacity;
    private String details;

    public Consoles(int productId, String productName, float productCost, float productPrice, int productStock, Brand brand, Platform platform, String model, float capacity, String details) {
        super(productId, productName, productCost, productPrice, productStock, brand, platform);
        this.model = model;
        this.capacity = capacity;
        this.details = details;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public float getCapacity() {
        return capacity;
    }

    public void setCapacity(float capacity) {
        this.capacity = capacity;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }
}
