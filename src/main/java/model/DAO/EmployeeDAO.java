package model.DAO;

import config.ConnectionDB;
import model.objects.Employee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import static config.Ansi.ANSI_RESET;
import static config.Ansi.ANSI_YELLOW;

public class EmployeeDAO {
    ConnectionDB connectionDB = new ConnectionDB();
    Connection connection = null;
    PreparedStatement preparedStatement;
    ResultSet resultSet;

    public Employee validate(String user, String password) {
        Employee anEmployee = new Employee();
        String query = "select * from users where typeUser=? and nickname=? and passwordUser=?";
        try {
            connection = connectionDB.toConnection();
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, "1");
            preparedStatement.setString(2, user);
            preparedStatement.setString(3, password);
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                anEmployee.setId(resultSet.getInt(1));
                anEmployee.setNickname(resultSet.getString(2));
                anEmployee.setPassword(resultSet.getString(3));
            }
        } catch (Exception e) {
            System.out.println(ANSI_YELLOW + e + ANSI_RESET);
        }
        return anEmployee;
    }
}
