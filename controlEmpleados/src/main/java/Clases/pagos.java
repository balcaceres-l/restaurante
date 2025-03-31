package Clases;

import java.util.Date;
import java.util.logging.Logger;

public class pagos {
    int idPago;
    int idEmpleado;
    Date fechaInicio;
    Date fechaCorte;
    Date fechaPago;
    double descuentos;
    double salarioNeto;
    double SalarioBase;
    int horasExtra;
    String nombre;
    double ingresoExtra;

    public pagos() {
    }

    public pagos(double SalarioBase, int horasExtra,  double ingresoExtra, double descuentos, double salarioNeto) {
        this.SalarioBase = SalarioBase;
        this.horasExtra = horasExtra;
        this.ingresoExtra = ingresoExtra;
        this.descuentos=descuentos;
        this.salarioNeto = salarioNeto;
    }

    public pagos(int idEmpleado, String nombre, double SalarioBase, int horasExtra, double descuentos, double salarioNeto) {
        this.idEmpleado = idEmpleado;
        this.nombre=nombre;
        this.SalarioBase=SalarioBase;
        this.horasExtra=horasExtra;
        this.descuentos=descuentos;
        this.salarioNeto=salarioNeto;
    }
    
    public int getIdPago() {
        return idPago;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNombre() {
        return nombre;
    }
    
    
    public double getSalarioBase() {
        return SalarioBase;
    }

    public int getHorasExtra() {
        return horasExtra;
    }

    public double getIngresoExtra() {
        return ingresoExtra;
    }

    public static Logger getLOG() {
        return LOG;
    }

    public void setSalarioBase(double SalarioBase) {
        this.SalarioBase = SalarioBase;
    }

    public void setHorasExtra(int horasExtra) {
        this.horasExtra = horasExtra;
    }

    public void setIngresoExtra(double ingresoExtra) {
        this.ingresoExtra = ingresoExtra;
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

   

    public void setDescuentos(double descuentos) {
        this.descuentos = descuentos;
    }

    public void setSalarioNeto(double salarioNeto) {
        this.salarioNeto = salarioNeto;
    }
    private static final Logger LOG = Logger.getLogger(pagos.class.getName());
    
}
