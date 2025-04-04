package clasesDAO;
import Clases.Conexion;

import Clases.horario;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.sql.Types;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;

public class horarios_DAO  {
    Connection con= Conexion.getInstancia().getConec();
    ResultSet rs;
    public ArrayList<horario> obtenerHorarios(){
        ArrayList<horario> listahorarios= new ArrayList<>();
        String sql = "{CALL MostrarHorariosEmpleados()}";
        try (CallableStatement smt = con.prepareCall(sql)){
            rs=smt.executeQuery();
            while (rs.next()) {
                horario empleado = new horario(
                    rs.getInt("id_empleado"),
                    rs.getString("nombre_completo"),
                    rs.getString("puesto")
                );
                listahorarios.add(empleado);
            }
        }catch(SQLException  e){
            System.err.println("Error al ejecutar el procedimiento almacenado: " + e.getMessage());
            e.printStackTrace();
        }return listahorarios;
    }
    
    public String ObtenerDiasLaborales(int idEmpleado) {
    StringBuilder diasLaborales = new StringBuilder();
    String sql = "{CALL sp_MostrarDiasLaboralesEmpleado(?)}";

    try (CallableStatement smt = con.prepareCall(sql)) {
        smt.setInt(1, idEmpleado);
        try (ResultSet rs = smt.executeQuery()) {
            boolean hayDatos = false;
            while (rs.next()) {
                String dia = rs.getString("dias_laborales");
                if (!"No asignado".equalsIgnoreCase(dia)) {
                    if (hayDatos) diasLaborales.append(", ");
                    diasLaborales.append(dia);
                    hayDatos = true;
                }
            }
            if (!hayDatos) {
                diasLaborales.append("No asignado");
            }
        }
    } catch (SQLException e) {
        System.err.println("Error al ejecutar el procedimiento almacenado: " + e.getMessage());
        e.printStackTrace();
        return "Error al obtener la información";
    }

    return diasLaborales.toString();
}
     public String ObtenerDiasLibres(int idEmpleado) {
    StringBuilder diasDescanso = new StringBuilder();
    String sql = "{CALL sp_MostrarDiasDescansoEmpleado(?)}";

    try (CallableStatement smt = con.prepareCall(sql)) {
        smt.setInt(1, idEmpleado);
        try (ResultSet rs = smt.executeQuery()) {
            boolean hayDatos = false;
            while (rs.next()) {
                String dia = rs.getString("dias_descanso");
                if (!"No asignado".equalsIgnoreCase(dia)) {
                    if (hayDatos) diasDescanso.append(", ");
                    diasDescanso.append(dia);
                    hayDatos = true;
                }
            }
            if (!hayDatos) {
                diasDescanso.append("No asignado");
            }
        }
    } catch (SQLException e) {
        System.err.println("Error al ejecutar el procedimiento almacenado: " + e.getMessage());
        e.printStackTrace();
        return "Error al obtener la información";
    }

    return diasDescanso.toString();
}
     public String insertarHorario(int idEmpleado, Date diasLaborales, Date diasDescanso) {
        String sql = "{CALL InsertarHorario(?, ?, ?)}";

        try (CallableStatement stmt = con.prepareCall(sql)) {
            stmt.setInt(1, idEmpleado);
            if (diasLaborales != null) {
                stmt.setDate(2, new java.sql.Date(diasLaborales.getTime()));
            } else {
                stmt.setNull(2, Types.DATE);
            }
            if (diasDescanso != null) {
                stmt.setDate(3, new java.sql.Date(diasDescanso.getTime()));
            } else {
                stmt.setNull(3, Types.DATE);
            }

            int filasAfectadas = stmt.executeUpdate();
        if (filasAfectadas > 0) {
            return "EXITO"; // Indica que la operación fue exitosa
        } else {
            return "No se pudo insertar el horario.";
        }
        } catch (SQLException e) {
            // Extraer y mostrar el mensaje de error del procedimiento almacenado
            String errorMsg = e.getMessage();

            // Buscar mensajes de error personalizados
            if (errorMsg.contains("Ya existe un horario con los mismos datos")) {
                System.out.println("⚠️ Error: Ya existe un horario con los mismos datos para este empleado.");
            } 
            else if (errorMsg.contains("No se puede asignar el mismo día como laboral y de descanso")) {
                System.out.println("⚠️ Error: No se puede asignar el mismo día como laboral y de descanso simultáneamente.");
            }
            else if (errorMsg.contains("ya está asignada como día de descanso")) {
                System.out.println("⚠️ Error: La fecha seleccionada ya está asignada como día de descanso para este empleado.");
            }
            else if (errorMsg.contains("ya está asignada como día laboral")) {
                System.out.println("⚠️ Error: La fecha seleccionada ya está asignada como día laboral para este empleado.");
            }
            else if (errorMsg.contains("Debe ingresar al menos una fecha")) {
                System.out.println("⚠️ Error: Debe ingresar al menos una fecha laboral o de descanso.");
            }
            else {
                // Para errores no específicos, mostramos el mensaje completo
                System.err.println("Error al insertar horario: " + errorMsg);
                e.printStackTrace();
            }

            return "Error al insertar horario: " + errorMsg;
        }
    }
}
