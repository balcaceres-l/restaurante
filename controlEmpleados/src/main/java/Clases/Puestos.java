/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Clases;

public class Puestos {
    int idPuestos;
    int idArea;
    String nombrePuesto;
    double salarioBase;

    public Puestos(int idPuestos, int idArea, String nombrePuesto, double salarioBase) {
        this.idPuestos = idPuestos;
        this.idArea = idArea;
        this.nombrePuesto = nombrePuesto;
        this.salarioBase = salarioBase;
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

    public void setSalarioBase(double salarioBase) {
        this.salarioBase = salarioBase;
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

    public double getSalarioBase() {
        return salarioBase;
    }
    
    
}
