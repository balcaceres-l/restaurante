package clasesDAO;
import Clases.Conexion;

import Clases.horario;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.util.HashSet;

public class horarios_DAO  {
    public horario obtenerHorarioPorId(int id_horario) {
        horario horario = null;
        Connection con = Conexion.getInstancia().getConec(); 
        String sql = "{call ObtenerHorarioPorId(?)}"; 

        try (CallableStatement stmt = con.prepareCall(sql)) {
            stmt.setInt(1, id_horario);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                horario = new horario();
                horario.setIdHorario(rs.getInt("id_horario"));
                horario.setDiasLaborales(rs.getString("dias_laborales"));
                horario.setDiasDescanso(rs.getString("dias_descanso"));
                horario.setHoraEntrada(rs.getTime("hora_entrada"));
                horario.setHoraSalida(rs.getTime("hora_salida"));
            }
        } catch (SQLException e) {
            System.out.println("Error al obtener el horario: " + e.getMessage());
        }
        return horario;
    }
    
    
}
