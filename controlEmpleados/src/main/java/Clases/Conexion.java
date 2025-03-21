package Clases;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class Conexion {
    private static Conexion instancia; 
    private Connection conec; 
    private Conexion() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost\\SQLEXPRESS:1433;databaseName=resta;encrypt=false";
            String user = "sa";
            String password = "Catolica10";
            conec = DriverManager.getConnection(url, user, password);
            System.out.println("Conexion hecha");
        } catch (ClassNotFoundException e) {
            System.out.println("Error al cargar el controlador: " + e);
        } catch (SQLException e) {
            System.out.println("Error al establecer la conexión: " + e);
        }
    }
    public static Conexion getInstancia() {
        if (instancia == null) {
            instancia = new Conexion();
        }
        return instancia;
    }
    public Connection getConec() {
        return conec;
    }
}
