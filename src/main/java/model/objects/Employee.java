package model.objects;

import java.util.Date;

public class Employee extends User {
    private int idSupervisor;
    private String branch;

    public Employee(int id,String nickname, String password, String firstName, String secondName, String middleName, String lastName, Date bornDate, String email, String phoneNumber, int userType, Date since, int idSupervisor, String branch) {
        super(id, nickname, password, firstName, secondName, middleName, lastName, bornDate, email, phoneNumber, userType, since);
        this.idSupervisor = idSupervisor;
        this.branch = branch;
    }

    public Employee() {
    }

    public int getIdSupervisor() {
        return idSupervisor;
    }

    public void setIdSupervisor(int idSupervisor) {
        this.idSupervisor = idSupervisor;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }
}
