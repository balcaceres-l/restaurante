package clasesDAO;

import Clases.Conexion;
import Clases.pagos;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class pagos_DAO {
    Connection con;
    ResultSet rs;
    public pagos_DAO(){
        con= Conexion.getInstancia().getConec();
    }
    public ArrayList<pagos> salarioEmpleados(int idEmpleado) {
        ArrayList<pagos> listaPagos = new ArrayList<>();
        String sql = "{CALL CalcularSalarioNeto(?)}";
        try (CallableStatement cs = con.prepareCall(sql)) {
            cs.setInt(1, idEmpleado);
            rs = cs.executeQuery();
            while (rs.next()) {
                double salarioBase = rs.getDouble("SalarioBase");
                int horasExtra = rs.getInt("HorasExtras");
                double ingresoExtra = rs.getDouble("IngresoHorasExtras");
                double descuentos = rs.getDouble("TotalDescuentos");
                double salarioNeto = rs.getDouble("SalarioNeto");
                ingresoExtra = Math.round(ingresoExtra * 10.0) / 10.0;
                descuentos= Math.round(descuentos *100.0)/100.0;
                salarioNeto= Math.round(salarioNeto *100.0)/100.0;
                pagos pago = new pagos(salarioBase, horasExtra, ingresoExtra, descuentos, salarioNeto);
                listaPagos.add(pago);
            }
        } catch (Exception e) {
            e.printStackTrace(); 
        }
        return listaPagos;
    }
    public ArrayList<pagos> obtenerTodosLosEmpleados() {
        ArrayList<pagos> listaPagos = new ArrayList<>();
        String sql = "{CALL sp_ObtenerReporteEmpleados()}";

        try (CallableStatement ps = con.prepareCall(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                pagos empleado = new pagos(
                    rs.getInt("id_empleado"),
                    rs.getString("Nombre"),
                    rs.getDouble("SalarioBase"),
                    rs.getInt("HorasExtra"),
                    rs.getDouble("Descuentos"),
                    rs.getDouble("SalarioNeto")
                );
                listaPagos.add(empleado);
            }
        } catch (SQLException e) {
            System.out.println("Error al obtener empleados: " + e);
        }
        return listaPagos;
    }
    public boolean actualizarSaldoBase(int idEmpleado, double nuevoSalarioBase, double nuevasHorasExtra) throws SQLException {
        CallableStatement cstmt = null;
        
        try {
            String sql = "{CALL ActualizarSaldoBase(?, ?, ?)}";
            cstmt = con.prepareCall(sql);
            cstmt.setInt(1, idEmpleado);
            cstmt.setDouble(2, nuevoSalarioBase);
            cstmt.setDouble(3, nuevasHorasExtra);
            cstmt.execute();
        } catch (SQLException e) {
            System.err.println("Error al actualizar el salario base: " + e.getMessage());
            return false;  
        }
        return true;
    }
}
