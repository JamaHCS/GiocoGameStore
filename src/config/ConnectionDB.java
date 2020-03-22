package config;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Objects;
import java.util.Properties;

public class ConnectionDB {
    Connection toDataBase;
    String url = "jdbc:mysql://localhost:3306/gioco";
    String user = "JamaHCS";
    String password = "acceso.jama";

    public Connection toConnection(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            toDataBase = DriverManager.getConnection(url, user, password);
        }catch (Exception e){

        }

        return toDataBase;
    }

//
//    DataSource dataSource;
//    Connection t = Objects.requireNonNull(dataSource).getConnection(user, password);
//
//    Properties info;
//
//    Connection ccConnection = DriverManager.getConnection();
//    Connection connection = DriverManager.getConnection(user, info);
//

}
