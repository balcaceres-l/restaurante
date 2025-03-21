package Clases;

import java.util.Date;

public class horario {
    int idHorario;
    int idEmpleado;
    String diasLaborales;
    String diasDescanso;
    Date horaEntrada;
    Date horaSalida;

    public horario() {
    }
    public horario( int idEmpleado, String diasLaborales, String diasDescanso, Date horaEntrada, Date horaSalida) {
        this.idEmpleado = idEmpleado;
        this.diasLaborales = diasLaborales;
        this.diasDescanso = diasDescanso;
        this.horaEntrada = horaEntrada;
        this.horaSalida = horaSalida;
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

    public Date getHoraEntrada() {
        return horaEntrada;
    }

    public Date getHoraSalida() {
        return horaSalida;
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

    public void setHoraEntrada(Date horaEntrada) {
        this.horaEntrada = horaEntrada;
    }

    public void setHoraSalida(Date horaSalida) {
        this.horaSalida = horaSalida;
    }
    
}
