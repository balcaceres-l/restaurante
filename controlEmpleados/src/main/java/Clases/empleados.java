package Clases;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;

public class empleados {
    int idEmpleado;
    int idUsuario;
    int idPuesto;
    int idHorario;
    Date fechaContratacion;
    public empleados() {
    }

    public empleados(int idEmpleado, int idUsuario, int idPuesto, int idHorario, Date fechaContratacion) {
        this.idEmpleado = idEmpleado;
        this.idUsuario = idUsuario;
        this.idPuesto = idPuesto;
        this.idHorario = idHorario;
        this.fechaContratacion=fechaContratacion;
    }

    public int getIdHorario() {
        return idHorario;
    }

    public Date getFechaContratacion() {
        return fechaContratacion;
    }

   

    public void setIdHorario(int idHorario) {
        this.idHorario = idHorario;
    }

    public void setFechaContratacion(Date fechaContratacion) {
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

    public void setIdEmpleado(int idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public void setIdPuesto(int idPuesto) {
        this.idPuesto = idPuesto;
    }
    
    
    
}
