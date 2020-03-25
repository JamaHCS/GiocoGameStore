package model.objects;

import java.util.Date;

public abstract class User {
    private int id;
    private String nickname;
    private String password;
    private String firstName;
    private String secondName;
    private String middleName;
    private String lastName;
    private String fullName;
    private Date bornDate;
    private String email;
    private String phoneNumber;
    private int userType;
    private Date since;
    private int status;

    User(){}

    public User(int id,String nickname, String password, String firstName, String secondName, String middleName, String lastName, Date bornDate, String email, String phoneNumber, int userType, Date since) {
        this.nickname = nickname;
        this.password = password;
        this.firstName = firstName;
        this.secondName = secondName;
        this.middleName = middleName;
        this.lastName = lastName;
        this.bornDate = bornDate;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.userType = userType;
        this.since = since;
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getSecondName() {
        return secondName;
    }

    public void setSecondName(String secondName) {
        this.secondName = secondName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public Date getBornDate() {
        return bornDate;
    }

    public void setBornDate(Date bornDate) {
        this.bornDate = bornDate;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public int getUserType() {
        return userType;
    }

    public void setUserType(int userType) {
        this.userType = userType;
    }

    public Date getSince() {
        return since;
    }

    public void setSince(Date since) {
        this.since = since;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
// Necesitamos conseguir la fecha actual para poder calcular la edad sin necesidad de generar un objeto Date con la instancia de la fecha actual.
        return "\nid: " + this.id + "\nNombre: " + this.fullName + "\nEdad: " + (this.bornDate) + "\nCorreo electrónico: " + this.email + "\nNúmero de teléfono: " + this.phoneNumber;
    }
}
