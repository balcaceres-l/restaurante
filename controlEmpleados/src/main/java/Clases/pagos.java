package Clases;

import java.util.Date;
import java.util.logging.Logger;

public class pagos {
    int idPago;
    int idEmpleado;
    Date fechaInicio;
    Date fechaCorte;
    Date fechaPago;
    double salarioBase;
    double descuentos;
    double salarioNeto;

    public pagos() {
    }

    public pagos(int idPago, int idEmpleado, Date fechaInicio, Date fechaCorte, Date fechaPago, double salarioBase, double descuentos, double salarioNeto) {
        this.idPago = idPago;
        this.idEmpleado = idEmpleado;
        this.fechaInicio = fechaInicio;
        this.fechaCorte = fechaCorte;
        this.fechaPago = fechaPago;
        this.salarioBase = salarioBase;
        this.descuentos = descuentos;
        this.salarioNeto = salarioNeto;
    }

    public pagos(int idPago, Date fechaInicio, Date fechaCorte, Date fechaPago, double salarioBase, double descuentos, double salarioNeto) {
        this.idPago = idPago;
        this.fechaInicio = fechaInicio;
        this.fechaCorte = fechaCorte;
        this.fechaPago = fechaPago;
        this.salarioBase = salarioBase;
        this.descuentos = descuentos;
        this.salarioNeto = salarioNeto;
    }

    public int getIdPago() {
        return idPago;
    }

    public int getIdEmpleado() {
        return idEmpleado;
    }

    public Date getFechaInicio() {
        return fechaInicio;
    }

    public Date getFechaCorte() {
        return fechaCorte;
    }

    public Date getFechaPago() {
        return fechaPago;
    }

    public double getSalarioBase() {
        return salarioBase;
    }

    public double getDescuentos() {
        return descuentos;
    }

    public double getSalarioNeto() {
        return salarioNeto;
    }

    public void setIdPago(int idPago) {
        this.idPago = idPago;
    }

    public void setIdEmpleado(int idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    public void setFechaInicio(Date fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public void setFechaCorte(Date fechaCorte) {
        this.fechaCorte = fechaCorte;
    }

    public void setFechaPago(Date fechaPago) {
        this.fechaPago = fechaPago;
    }

    public void setSalarioBase(double salarioBase) {
        this.salarioBase = salarioBase;
    }

    public void setDescuentos(double descuentos) {
        this.descuentos = descuentos;
    }

    public void setSalarioNeto(double salarioNeto) {
        this.salarioNeto = salarioNeto;
    }
    private static final Logger LOG = Logger.getLogger(pagos.class.getName());
    
}
