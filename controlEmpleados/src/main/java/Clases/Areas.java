/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Clases;


public class Areas {
    int idArea;
    String nombreArea;
    String descripcion;

    public Areas() {
    }

    public Areas(int idArea, String nombreArea, String descripcion) {
        this.idArea = idArea;
        this.nombreArea = nombreArea;
        this.descripcion = descripcion;
    }

    public void setIdArea(int idArea) {
        this.idArea = idArea;
    }

    public void setNombreArea(String nombreArea) {
        this.nombreArea = nombreArea;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getIdArea() {
        return idArea;
    }

    public String getNombreArea() {
        return nombreArea;
    }

    public String getDescripcion() {
        return descripcion;
    }
    
}
