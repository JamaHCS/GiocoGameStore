package model;

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



    @Override
    public String toString() {
// Necesitamos conseguir la fecha actual para poder calcular la edad sin necesidad de generar un objeto Date con la instancia de la fecha actual.
        return "\nid: " + this.id + "\nNombre: " + this.fullName + "\nEdad: " + (this.bornDate) + "\nCorreo electrónico: " + this.email + "\nNúmero de teléfono: " + this.phoneNumber;
    }
}
