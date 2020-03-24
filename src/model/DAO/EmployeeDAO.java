package model.DAO;

import config.ConnectionDB;
import model.objects.Employee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class EmployeeDAO {
    ConnectionDB connectionDB = new ConnectionDB();
    Connection connection;
    PreparedStatement preparedStatement;
    ResultSet resultSet;

    public Employee validate(String user, String password) {
        Employee anEmployee = new Employee();
        String query = "select * from users inner join seller on users.idSeller = seller.idSeller where typeUser=1 and nickname=? and passwordUser=?";
        try {
            connection = connectionDB.toConnection();
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, user);
            preparedStatement.setString(2, password);
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                anEmployee.setId(resultSet.getInt(1));
                anEmployee.setNickname(resultSet.getString(2));
                anEmployee.setPassword(resultSet.getString(3));
            }

        } catch (Exception e) {

        }

        return anEmployee;
    }
}
