package Clases;

import java.util.Date;

public class inventarioUtensilios {
    int idInventario;
    int idUtensilios;
    int idArea;
    int idEstadoUtensilios;
    String descripcion;
    int cantidad;
    double costoUnitario;
    String ubicacionDetallada;
    Date fechaIngreso;

    public inventarioUtensilios() {
    }

    public inventarioUtensilios(int idInventario, int idUtensilios, int idArea, int idEstadoUtensilios, String descripcion, int cantidad, double costoUnitario, Date fechaIngreso) {
        this.idInventario = idInventario;
        this.idUtensilios = idUtensilios;
        this.idArea = idArea;
        this.idEstadoUtensilios = idEstadoUtensilios;
        this.descripcion = descripcion;
        this.cantidad = cantidad;
        this.costoUnitario = costoUnitario;
        this.fechaIngreso = fechaIngreso;
    }

    public inventarioUtensilios(int idInventario, int idUtensilios, int idArea, int idEstadoUtensilios, String descripcion, int cantidad, double costoUnitario, String ubicacionDetallada, Date fechaIngreso) {
        this.idInventario = idInventario;
        this.idUtensilios = idUtensilios;
        this.idArea = idArea;
        this.idEstadoUtensilios = idEstadoUtensilios;
        this.descripcion = descripcion;
        this.cantidad = cantidad;
        this.costoUnitario = costoUnitario;
        this.ubicacionDetallada = ubicacionDetallada;
        this.fechaIngreso = fechaIngreso;
    }

    public int getIdInventario() {
        return idInventario;
    }

    public int getIdUtensilios() {
        return idUtensilios;
    }

    public int getIdArea() {
        return idArea;
    }

    public int getIdEstadoUtensilios() {
        return idEstadoUtensilios;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public int getCantidad() {
        return cantidad;
    }

    public double getCostoUnitario() {
        return costoUnitario;
    }

    public String getUbicacionDetallada() {
        return ubicacionDetallada;
    }

    public Date getFechaIngreso() {
        return fechaIngreso;
    }

    public void setIdInventario(int idInventario) {
        this.idInventario = idInventario;
    }

    public void setIdUtensilios(int idUtensilios) {
        this.idUtensilios = idUtensilios;
    }

    public void setIdArea(int idArea) {
        this.idArea = idArea;
    }

    public void setIdEstadoUtensilios(int idEstadoUtensilios) {
        this.idEstadoUtensilios = idEstadoUtensilios;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public void setCostoUnitario(double costoUnitario) {
        this.costoUnitario = costoUnitario;
    }

    public void setUbicacionDetallada(String ubicacionDetallada) {
        this.ubicacionDetallada = ubicacionDetallada;
    }

    public void setFechaIngreso(Date fechaIngreso) {
        this.fechaIngreso = fechaIngreso;
    }
    
            
}
