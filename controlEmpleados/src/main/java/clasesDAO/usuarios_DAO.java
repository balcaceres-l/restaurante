package clasesDAO;

import Clases.Conexion;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Types;

    
public class usuarios_DAO {
    public String validarUsuario(String usuario, String clave) {
        String mensaje = null;
        String rol = null;
       
        Connection con = Conexion.getInstancia().getConec();
        String sql = "{call ValidarUsuario(?, ?, ?, ?)}"; // Asegúrate de que la llamada tenga 4 parámetros
        try (CallableStatement stmt = con.prepareCall(sql)) {
            stmt.setString(1, usuario);
            stmt.setString(2, clave);
            stmt.registerOutParameter(3, Types.VARCHAR); // Mensaje
            stmt.registerOutParameter(4, Types.VARCHAR); // Rol
            stmt.execute();
            mensaje = stmt.getString(3);
            rol = stmt.getString(4);
        } catch (SQLException e) {
            e.printStackTrace();
            mensaje = "Error en la validación del usuario.";
        }
        return mensaje + (rol != null ? ", Rol: " + rol : "");
    }
    public String hashPassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hashedBytes = md.digest(password.getBytes());

            StringBuilder sb = new StringBuilder();
            for (byte b : hashedBytes) {
                sb.append(String.format("%02x", b));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return null;
    }
}
