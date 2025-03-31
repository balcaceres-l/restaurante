package clasesDAO;

import Clases.Conexion;
import Clases.Puestos;
import Clases.empleados;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class empleados_DAO {
    Connection con;
    ResultSet rs;
    public empleados_DAO(){
        con= Conexion.getInstancia().getConec();
    }
    public boolean actualizarOAsignarPuesto(int idEmpleado, String nombrePuesto) {
     
        String sql = "{CALL ActualizarOAsignarPuesto(?, ?)}";

        try (CallableStatement cs = con.prepareCall(sql)) {
            cs.setInt(1, idEmpleado);
            cs.setString(2, nombrePuesto);

            int filasAfectadas = cs.executeUpdate();
            return filasAfectadas > 0;
        } catch (SQLException e) {
            System.out.println("Error al actualizar/asignar puesto: " + e);
            return false;
        }
    }
    public ArrayList<empleados> obtenerTodosLosEmpleados() {
        ArrayList<empleados> listaEmpleados = new ArrayList<>();
        String sql = "{CALL sp_ObtenerTodosLosEmpleados()}";

        try (CallableStatement ps = con.prepareCall(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                empleados empleado = new empleados(
                    rs.getInt("id_usuario"),
                    rs.getString("nombre_empleado"),
                    rs.getString("rol_empleado"),
                    rs.getDate("fechaContratacion")
                );
                listaEmpleados.add(empleado);
            }
        } catch (SQLException e) {
            System.out.println("Error al obtener empleados: " + e);
        }
        return listaEmpleados;
    }
    public  ArrayList<empleados> ObtenerDatos(int idUsuario, int idEmpleado) {
        ArrayList<empleados> listaEmpleados= new ArrayList<>();
        String sql = "{CALL ObtenerDatosEmpleado(?, ?)}";
        try {
            CallableStatement cs = con.prepareCall(sql);
            cs.setInt(1, idUsuario);
            cs.setInt(2, idEmpleado);
            ResultSet rs = cs.executeQuery();
            while (rs.next()) {
                empleados empleado= new empleados(
                rs.getString("NombreEmpleado"),
                rs.getString("Puesto"),
                rs.getDouble("SalarioNeto"));
               listaEmpleados.add(empleado);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listaEmpleados;
    }
    public boolean editarEmpleado(empleados empleado) {
        String sql = "{CALL sp_ActualizarEmpleado(?, ?, ?, ?)}";
        try (CallableStatement ps = con.prepareCall(sql)) {
            ps.setInt(1, empleado.getIdUsuario());
            ps.setString(2, empleado.getNombre());
            ps.setString(3, empleado.getRol());
            ps.setDate(4, new java.sql.Date(empleado.getFechaContratacion().getTime()));

            int filasAfectadas = ps.executeUpdate();
            return filasAfectadas > 0;
        } catch (SQLException e) {
            System.out.println("Error al editar empleado: " + e);
            return false;
        }
    }
    public boolean eliminarEmpleado(int idUsuario) {
        String sql = "{CALL sp_EliminarUsuario(?)}";

        try (CallableStatement ps = con.prepareCall(sql)) {
            ps.setInt(1, idUsuario);

            int filasAfectadas = ps.executeUpdate();
            return filasAfectadas > 0;
        } catch (SQLException e) {
            System.out.println("Error al eliminar usuario: " + e);
            return false;
        }
    }
    
}
