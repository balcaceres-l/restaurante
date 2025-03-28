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
    String nombre;
    String rol;
   
    public empleados() {
    }

    public empleados(int idEmpleado, int idUsuario, int idPuesto, int idHorario, Date fechaContratacion) {
        this.idEmpleado = idEmpleado;
        this.idUsuario = idUsuario;
        this.idPuesto = idPuesto;
        this.idHorario = idHorario;
        this.fechaContratacion=fechaContratacion;
    }

    public empleados(int idUsuario, String nombre, String rol, Date fechaContratacion) {
        this.idUsuario = idUsuario;
        
        this.nombre = nombre;
        this.rol = rol;
        this.fechaContratacion = fechaContratacion;
    }

    public String getNombre() {
        return nombre;
    }

    public String getRol() {
        return rol;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setRol(String rol) {
        this.rol = rol;
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
