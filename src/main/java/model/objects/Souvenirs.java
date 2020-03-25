package model.objects;

public class Souvenirs extends Product {
    private String type;
    private String collectionOf;
    private String details;

    public Souvenirs(int productId, String productName, float productCost, float productPrice, int productStock, Brand brand, Platform platform, String type, String collectionOf, String details) {
        super(productId, productName, productCost, productPrice, productStock, brand, platform);
        this.type = type;
        this.collectionOf = collectionOf;
        this.details = details;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCollectionOf() {
        return collectionOf;
    }

    public void setCollectionOf(String collectionOf) {
        this.collectionOf = collectionOf;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }
}
