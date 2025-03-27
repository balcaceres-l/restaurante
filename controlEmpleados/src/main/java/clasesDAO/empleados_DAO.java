package clasesDAO;

import Clases.Conexion;
import Clases.Puestos;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

public class empleados_DAO {
    public boolean asignarPuesto(Puestos puesto) {
        Connection con = Conexion.getInstancia().getConec();
        String sql = "{CALL AsignarPuesto(?, ?)}";

        try (CallableStatement cs = con.prepareCall(sql)) {
            cs.setInt(1, puesto.getIdEmpleado());
            cs.setString(2, puesto.getNombrePuesto());

            int filasAfectadas = cs.executeUpdate();
            return filasAfectadas > 0;
        } catch (SQLException e) {
            System.out.println("Error al asignar puesto: " + e);
            return false;
        }
    }
}
