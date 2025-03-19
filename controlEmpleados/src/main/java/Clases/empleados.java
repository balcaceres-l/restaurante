package Clases;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;

public class empleados {
    int idEmpleado;
    int idUsuario;
    int idPuesto;
    Date fechaContratacion;

    public empleados() {
    }

    public empleados(int idEmpleado, int idUsuario, int idPuesto, Date fechaContratacion) {
        this.idEmpleado = idEmpleado;
        this.idUsuario = idUsuario;
        this.idPuesto = idPuesto;
        this.fechaContratacion = fechaContratacion;
    }

    public int getIdEmpleado() {
        return idEmpleado;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public int getIdPuesto() {
        return idPuesto;
    }

    public Date getFechaContratacion() {
        return fechaContratacion;
    }

    public void setIdEmpleado(int idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public void setIdPuesto(int idPuesto) {
        this.idPuesto = idPuesto;
    }

    public void setFechaContratacion(Date fechaContratacion) {
        this.fechaContratacion = fechaContratacion;
    }
    
    
    
}
