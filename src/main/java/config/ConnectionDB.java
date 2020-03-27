package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDB {
    String url = "jdbc:mysql://localhost:3306/gioco?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=GMT-6";
    String user = "JamaHCS";
    String password = "acceso.jama";

    public Connection toConnection() throws ClassNotFoundException {
        Connection toDataBase = null;
        Class.forName("com.mysql.jdbc.Driver");

        try {
            toDataBase = DriverManager.getConnection(url, user, password);
            if (toDataBase != null) {
                System.out.println("Conexión exitosa");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return toDataBase;
    }
}
