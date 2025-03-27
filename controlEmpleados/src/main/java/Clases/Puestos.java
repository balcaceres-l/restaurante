/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Clases;

public class Puestos {
    int idPuestos;
    int idArea;
    int idEmpleado;
    String nombrePuesto;

    public Puestos(int idPuestos, int idArea, String nombrePuesto) {
        this.idPuestos = idPuestos;
        this.idArea = idArea;
        this.nombrePuesto = nombrePuesto;
       
    }

    public Puestos(int idEmpleado, String nombrePuesto) {
        this.idEmpleado = idEmpleado;
        this.nombrePuesto = nombrePuesto;
    }
    
    public Puestos() {
    }
    
    public void setIdPuestos(int idPuestos) {
        this.idPuestos = idPuestos;
    }

    public void setIdArea(int idArea) {
        this.idArea = idArea;
    }

    public void setNombrePuesto(String nombrePuesto) {
        this.nombrePuesto = nombrePuesto;
    }

    public int getIdEmpleado() {
        return idEmpleado;
    }

    public void setIdEmpleado(int idEmpleado) {
        this.idEmpleado = idEmpleado;
    }

    

    public int getIdPuestos() {
        return idPuestos;
    }

    public int getIdArea() {
        return idArea;
    }

    public String getNombrePuesto() {
        return nombrePuesto;
    }

    
    
    
}
