package model.objects;

public class Videogames extends Product {
    private String esrb;
    private String gameType;
    private int numberOfPlayers;
    private String studio;

    public Videogames(int productId, String productName, float productCost, float productPrice, int productStock, Brand brand, Platform platform, String esrb, String gameType, int numberOfPlayers, String studio) {
        super(productId, productName, productCost, productPrice, productStock, brand, platform);
        this.esrb = esrb;
        this.gameType = gameType;
        this.numberOfPlayers = numberOfPlayers;
        this.studio = studio;
    }

    public String getEsrb() {
        return esrb;
    }

    public void setEsrb(String esrb) {
        this.esrb = esrb;
    }

    public String getGameType() {
        return gameType;
    }

    public void setGameType(String gameType) {
        this.gameType = gameType;
    }

    public int getNumberOfPlayers() {
        return numberOfPlayers;
    }

    public void setNumberOfPlayers(int numberOfPlayers) {
        this.numberOfPlayers = numberOfPlayers;
    }

    public String getStudio() {
        return studio;
    }

    public void setStudio(String studio) {
        this.studio = studio;
    }
}
