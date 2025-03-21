package Clases;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;

public class empleados {
    int idEmpleado;
    int idUsuario;
    int idPuesto;
    int idHorario;
    String nombre;
    String apellido;
    String email;
    public empleados() {
    }

    public empleados(int idEmpleado, int idUsuario, int idPuesto, int idHorario, String nombre, String apellido, String email) {
        this.idEmpleado = idEmpleado;
        this.idUsuario = idUsuario;
        this.idPuesto = idPuesto;
        this.idHorario = idHorario;
        this.nombre = nombre;
        this.apellido = apellido;
        this.email = email;
    }

    public int getIdHorario() {
        return idHorario;
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public String getEmail() {
        return email;
    }

    public void setIdHorario(int idHorario) {
        this.idHorario = idHorario;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public void setEmail(String email) {
        this.email = email;
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
