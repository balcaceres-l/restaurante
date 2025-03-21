/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Clases;


public class EstadoUtensilios {
    int idEstado;
    String estado;
    String descripcion;

    public EstadoUtensilios() {
    }

    public EstadoUtensilios(int idEstado, String estado, String descripcion) {
        this.idEstado = idEstado;
        this.estado = estado;
        this.descripcion = descripcion;
    }

    public void setIdEstado(int idEstado) {
        this.idEstado = idEstado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getIdEstado() {
        return idEstado;
    }

    public String getEstado() {
        return estado;
    }

    public String getDescripcion() {
        return descripcion;
    }
    
}
