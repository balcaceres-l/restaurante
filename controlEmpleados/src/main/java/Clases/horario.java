package Clases;

import java.util.Date;

public class horario {
    int idHorario;
    int idEmpleado;
    String diasLaborales;
    String diasDescanso;
    String nombre;
    String puesto;
    Date DiasLaboralesDate;
    Date DiasDescansoDate;

    public horario() {
    }
    

    public horario(int idEmpleado, String nombre, String diasLaborales, String diasDescanso) {
        this.idEmpleado = idEmpleado;
        this.nombre = nombre;
        this.diasLaborales = diasLaborales;
        this.diasDescanso = diasDescanso;
        
    }

    public horario(String diasLaborales) {
        this.diasLaborales = diasLaborales;
    }
    

    public horario(int idEmpleado, String nombre, String puesto) {
        this.idEmpleado = idEmpleado;
        this.nombre = nombre;
        this.puesto = puesto;
    }

    public String getPuesto() {
        return puesto;
    }

    public void setPuesto(String puesto) {
        this.puesto = puesto;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public int getIdHorario() {
        return idHorario;
    }

    public int getIdEmpleado() {
        return idEmpleado;
    }

    public String getDiasLaborales() {
        return diasLaborales;
    }

    public String getDiasDescanso() {
        return diasDescanso;
    }

    public Date getDiasLaboralesDate() {
        return DiasLaboralesDate;
    }

    public Date getDiasDescansoDate() {
        return DiasDescansoDate;
    }

    public void setIdHorario(int idHorario) {
        this.idHorario = idHorario;
    }

    public void setIdEmpleado(int idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public void setDiasLaborales(String diasLaborales) {
        this.diasLaborales = diasLaborales;
    }

    public void setDiasDescanso(String diasDescanso) {
        this.diasDescanso = diasDescanso;
    }

    public void setDiasLaboralesDate(Date DiasLaboralesDate) {
        this.DiasLaboralesDate = DiasLaboralesDate;
    }

    public void setDiasDescansoDate(Date DiasDescansoDate) {
        this.DiasDescansoDate = DiasDescansoDate;
    }
    
}
