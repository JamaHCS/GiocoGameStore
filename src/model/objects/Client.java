package model.objects;

import java.util.Date;

public class Client extends User {
    private String rfc;
    private String curp;
    private double points;
    private String street;
    private int exteriorN;
    private int interiorN;
    private int postalCode;
    private String colony;

    public Client() {
    }

    public Client(int id, String nickname, String password, String firstName, String secondName, String middleName, String lastName, Date bornDate, String email, String phoneNumber, int userType, Date since, String rfc, String curp, double points, String street, int exteriorN, int interiorN, int postalCode, String colony) {
        super(id, nickname, password, firstName, secondName, middleName, lastName, bornDate, email, phoneNumber, userType, since);
        this.rfc = rfc;
        this.curp = curp;
        this.points = points;
        this.street = street;
        this.exteriorN = exteriorN;
        this.interiorN = interiorN;
        this.postalCode = postalCode;
        this.colony = colony;
    }

    public String getRfc() {
        return rfc;
    }

    public void setRfc(String rfc) {
        this.rfc = rfc;
    }

    public String getCurp() {
        return curp;
    }

    public void setCurp(String curp) {
        this.curp = curp;
    }

    public double getPoints() {
        return points;
    }

    public void setPoints(double points) {
        this.points = points;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public int getExteriorN() {
        return exteriorN;
    }

    public void setExteriorN(int exteriorN) {
        this.exteriorN = exteriorN;
    }

    public int getInteriorN() {
        return interiorN;
    }

    public void setInteriorN(int interiorN) {
        this.interiorN = interiorN;
    }

    public int getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(int postalCode) {
        this.postalCode = postalCode;
    }

    public String getColony() {
        return colony;
    }

    public void setColony(String colony) {
        this.colony = colony;
    }
}
