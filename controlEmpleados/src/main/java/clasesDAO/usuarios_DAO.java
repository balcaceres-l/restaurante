package clasesDAO;

import Clases.Conexion;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Types;
import Clases.usuarios;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;
    
public class usuarios_DAO {
    ResultSet rs;
    public String validarUsuario(String usuario, String clave) {
        String mensaje = null;
        String rol = null;
        Connection con = Conexion.getInstancia().getConec();
        String sql = "{call ValidarUsuario(?, ?, ?, ?)}";
        try (CallableStatement stmt = con.prepareCall(sql)) {
            stmt.setString(1, usuario);
            stmt.setString(2, clave);
            stmt.registerOutParameter(3, Types.VARCHAR); 
            stmt.registerOutParameter(4, Types.VARCHAR); 
            stmt.execute();
            mensaje = stmt.getString(3);
            rol = stmt.getString(4);
        } catch (SQLException e) {
            e.printStackTrace();
            mensaje = "Error en la validación del usuario.";
        }
        return mensaje + (rol != null ? ", Rol: " + rol : "");
    }
    public void AgregarUsuario(usuarios usuario){
        if (existeUsuario(usuario.getUsuario())) {
            JOptionPane.showMessageDialog(null, "El nombre de usuario ya existe. Por favor, elige otro.", "Error", JOptionPane.ERROR_MESSAGE);
            return;
        }
    }
    public  boolean existeUsuario(String usuario) {
        String sql = "SELECT COUNT(*) FROM usuario WHERE usuario = ?";

        try (PreparedStatement stmt = Conexion.getInstancia().getConec().prepareStatement(sql)) {
            stmt.setString(1, usuario);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) > 0; 
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return false;
    }
    public String encriptar(String password) {
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
