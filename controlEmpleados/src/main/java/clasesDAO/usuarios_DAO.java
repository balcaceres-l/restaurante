package clasesDAO;
import java.util.ArrayList;
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
    Connection con;
    public  usuarios_DAO(){
        this.con = Conexion.getInstancia().getConec();
    }
    public usuarios validarUsuario(String usuario, String clave) {
        usuarios usuarioAutenticado = null;  
        String sql = "{call ValidarUsuario(?, ?, ?, ?, ?)}";  
        try (CallableStatement stmt = con.prepareCall(sql)) {
            String claveEncriptada = encriptar(clave);
            stmt.setString(1, usuario);
            stmt.setString(2, claveEncriptada);
            stmt.registerOutParameter(3, Types.VARCHAR);  
            stmt.registerOutParameter(4, Types.VARCHAR);  
            stmt.registerOutParameter(5, Types.INTEGER);  
            stmt.execute();
            String mensaje = stmt.getString(3);
            String rol = stmt.getString(4);
            int idUsuario = stmt.getInt(5);  
            if (idUsuario != -1 && rol != null) {
                usuarioAutenticado = new usuarios(idUsuario, getRolId(rol), usuario, clave);
            } else {
                usuarioAutenticado = null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            usuarioAutenticado = null; 
        }

        return usuarioAutenticado;  
    }

    private int getRolId(String rol) {
        switch (rol) {
            case "Administrador":
                return 1;
            case "Supervisor":
                return 5;
            case "Usuario normal":
                return 6;
            default:
                return -1;  
        }
    }
    public void AgregarUsuario(usuarios usuario){
        if (existeUsuario(usuario.getUsuario())) {
            JOptionPane.showMessageDialog(null, "El nombre de usuario ya existe. Por favor, elige otro.", "Error", JOptionPane.ERROR_MESSAGE);
            return;
        }
        String sql= "{CALL InsertarUsuario(?,?,?,?,?,?)}";
        try (CallableStatement stmt = con.prepareCall(sql)){
            String hashPass= encriptar(usuario.getPassword());
            stmt.setInt(1, usuario.getIdRol());
            stmt.setString(2, usuario.getUsuario());
            stmt.setString(3, usuario.getNombre());
            stmt.setString(4, usuario.getApellido());
            stmt.setString(5, usuario.getCorreo());
            stmt.setString(6, hashPass);
            stmt.executeUpdate();
            JOptionPane.showMessageDialog(null, "Usuario registrado con éxito");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
    public void editar(usuarios usuario){
        String sql ="{CALL sp_EditarUsuario(?,?,?)}";
        try (CallableStatement stmt = con.prepareCall(sql)){
            stmt.setInt(1,usuario.getIdUsuario());
            stmt.setString(2,usuario.getNombre());
            stmt.setString(3,usuario.getApellido());
            stmt.executeUpdate();
        }catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    public  boolean existeUsuario(String usuario) {
        String sql = "SELECT COUNT(*) FROM usuarios WHERE usuario = ?";
        try (PreparedStatement stmt = con.prepareStatement(sql)) {
            stmt.setString(1, usuario);
            rs = stmt.executeQuery();
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
    public usuarios obtenerUsuarioPorId(int idUsuario) {
        usuarios usuario = null;
        
        String sql = "{CALL sp_ObtenerUsuarioInfo(?)}";
        
        try (CallableStatement stmt = con.prepareCall(sql)) {
            stmt.setInt(1, idUsuario);
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                usuario = new usuarios(
                    rs.getString("usuario"),
                    rs.getString("nombre"),
                    rs.getString("apellido"),
                    rs.getString("rol"),
                    rs.getDate("fecha_inicio")
                );
            }
        } catch (SQLException e) {
            System.out.println("Error al obtener usuario: " + e);
        }
        return usuario;
    }
    public ArrayList<usuarios> obtenerTodosLosUsuarios() {
        ArrayList<usuarios> listaUsuarios = new ArrayList<>();
        String sql = "{CALL sp_ObtenerEmpleadosRol6()}";
        
        try (CallableStatement ps = con.prepareCall(sql)) {
             rs = ps.executeQuery();
            while (rs.next()) {
                usuarios usuario = new usuarios(
                    rs.getInt("id_empleado"),
                    rs.getString("nombre"),
                    rs.getString("apellido"),
                    rs.getDate("fechaContratacion"),
                    rs.getString("nombre_puesto")
                );
                listaUsuarios.add(usuario);
            }
        } catch (SQLException e) {
            System.out.println("Error al obtener usuarios: " + e);
        }
        return listaUsuarios;
    }
    public Integer obtenerIdEmpleadoPorUsuario(int idUsuario) {
        Integer idEmpleado = null;
        String sql = "{CALL sp_ObtenerIdEmpleado(?, ?)}";

        try (CallableStatement cs = con.prepareCall(sql)) {
            cs.setInt(1, idUsuario);
            cs.registerOutParameter(2, Types.INTEGER);
            cs.execute();
            idEmpleado = cs.getInt(2);
            if (cs.wasNull()) { 
                idEmpleado = null;
            }
        } catch (SQLException e) {
            System.out.println("Error al obtener el ID del empleado: " + e.getMessage());
        }
        return idEmpleado;
    }
    public Integer ObtenerIdArea(int idEmpleado) {
        Integer idArea = null;
        String sql = "{CALL ObtenerIdPuesto(?)}";

        try (CallableStatement cs = con.prepareCall(sql)) {
            cs.setInt(1, idEmpleado); 

            try (ResultSet rs = cs.executeQuery()) { 
                if (rs.next()) {
                    idArea = rs.getInt(1); 
                }
            }
        } catch (Exception e) {
            System.out.println("Error, área no asignada al id de empleado: " + idEmpleado);
        }

        return idArea;
    }
    public Integer ObtenerIdUsuario(int idEmpleado) {
        Integer idUsuario = null;
        String sql = "{CALL ObtenerIdUsuarioPorIdEmpleado(?)}";

        try (CallableStatement cs = con.prepareCall(sql)) {
            cs.setInt(1, idEmpleado); 

            try (ResultSet rs = cs.executeQuery()) { 
                if (rs.next()) {
                    idUsuario = rs.getInt(1); 
                }
            }
        } catch (Exception e) {
            System.out.println("Error, área no asignada al id de empleado: " + idEmpleado);
        }

        return idUsuario;
    }
}
