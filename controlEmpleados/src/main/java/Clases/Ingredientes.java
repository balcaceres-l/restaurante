/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Clases;

import java.util.Date;

public class Ingredientes {
    int idInventario;
    int idIngrediente;
    int idProveedor;
    int idArea;
    int idEstadoIngrediente;
    String descripcion;
    int cantidad;
    Date fechaIngreso;
    Date fechaVencimiento;
    String estado;
    int idTipoIngrediente;
    String nombreTipo;
    int idCategoriaIngrediente;
    String nombreCategoria;
    String nombreIngrediente;
    
    public Ingredientes() {
    }

    public Ingredientes(int idInventario, int idIngrediente, int idProveedor, int idArea, int idEstadoIngrediente, String descripcion, int cantidad, Date fechaIngreso, Date fechaVencimiento) {
        this.idInventario = idInventario;
        this.idIngrediente = idIngrediente;
        this.idProveedor = idProveedor;
        this.idArea = idArea;
        this.idEstadoIngrediente = idEstadoIngrediente;
        this.descripcion = descripcion;
        this.cantidad = cantidad;
        this.fechaIngreso = fechaIngreso;
        this.fechaVencimiento = fechaVencimiento;
    }

    public Ingredientes(int idTipoIngrediente, String nombreTipo, String descripcion  ) {
        this.idTipoIngrediente = idTipoIngrediente;
        this.nombreTipo = nombreTipo;
        this.descripcion = descripcion;
        
        
    }
    public Ingredientes(int idCategoriaIngrediente, String nombreCategoria) {
        this.idTipoIngrediente = idTipoIngrediente;
        this.nombreTipo = nombreTipo;
    }

    public Ingredientes(int idIngrediente, String descripcion, int idTipoIngrediente, int idCategoriaIngrediente, String nombreIngrediente) {
        this.idIngrediente = idIngrediente;
        this.descripcion = descripcion;
        this.idTipoIngrediente = idTipoIngrediente;
        this.idCategoriaIngrediente = idCategoriaIngrediente;
        this.nombreIngrediente = nombreIngrediente;
    }

    public int getIdInventario() {
        return idInventario;
    }

    public int getIdIngrediente() {
        return idIngrediente;
    }

    public int getIdProveedor() {
        return idProveedor;
    }

    public int getIdArea() {
        return idArea;
    }

    public int getIdEstadoIngrediente() {
        return idEstadoIngrediente;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public int getCantidad() {
        return cantidad;
    }

    public Date getFechaIngreso() {
        return fechaIngreso;
    }

    public Date getFechaVencimiento() {
        return fechaVencimiento;
    }

    public String getEstado() {
        return estado;
    }

    public int getIdTipoIngrediente() {
        return idTipoIngrediente;
    }

    public String getNombreTipo() {
        return nombreTipo;
    }

    public int getIdCategoriaIngrediente() {
        return idCategoriaIngrediente;
    }

    public String getNombreCategoria() {
        return nombreCategoria;
    }

    public String getNombreIngrediente() {
        return nombreIngrediente;
    }

    public void setIdInventario(int idInventario) {
        this.idInventario = idInventario;
    }

    public void setIdIngrediente(int idIngrediente) {
        this.idIngrediente = idIngrediente;
    }

    public void setIdProveedor(int idProveedor) {
        this.idProveedor = idProveedor;
    }

    public void setIdArea(int idArea) {
        this.idArea = idArea;
    }

    public void setIdEstadoIngrediente(int idEstadoIngrediente) {
        this.idEstadoIngrediente = idEstadoIngrediente;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public void setFechaIngreso(Date fechaIngreso) {
        this.fechaIngreso = fechaIngreso;
    }

    public void setFechaVencimiento(Date fechaVencimiento) {
        this.fechaVencimiento = fechaVencimiento;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public void setIdTipoIngrediente(int idTipoIngrediente) {
        this.idTipoIngrediente = idTipoIngrediente;
    }

    public void setNombreTipo(String nombreTipo) {
        this.nombreTipo = nombreTipo;
    }

    public void setIdCategoriaIngrediente(int idCategoriaIngrediente) {
        this.idCategoriaIngrediente = idCategoriaIngrediente;
    }

    public void setNombreCategoria(String nombreCategoria) {
        this.nombreCategoria = nombreCategoria;
    }

    public void setNombreIngrediente(String nombreIngrediente) {
        this.nombreIngrediente = nombreIngrediente;
    }
    
}
