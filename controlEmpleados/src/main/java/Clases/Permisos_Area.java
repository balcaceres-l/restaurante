/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Clases;


public class Permisos_Area {
    int idPermisos;
    int idRol;
    int idArea;
    boolean puedeAgregar;
    boolean puedeEditar;
    boolean puedeEliminar;
    boolean puedeConsultar;

    public Permisos_Area() {
    }

    public Permisos_Area(int idPermisos, int idRol, int idArea, boolean puedeAgregar, boolean puedeEditar, boolean puedeEliminar, boolean puedeConsultar) {
        this.idPermisos = idPermisos;
        this.idRol = idRol;
        this.idArea = idArea;
        this.puedeAgregar = puedeAgregar;
        this.puedeEditar = puedeEditar;
        this.puedeEliminar = puedeEliminar;
        this.puedeConsultar = puedeConsultar;
    }

    public int getIdPermisos() {
        return idPermisos;
    }

    public int getIdRol() {
        return idRol;
    }

    public int getIdArea() {
        return idArea;
    }

    public boolean isPuedeAgregar() {
        return puedeAgregar;
    }

    public boolean isPuedeEditar() {
        return puedeEditar;
    }

    public boolean isPuedeEliminar() {
        return puedeEliminar;
    }

    public boolean isPuedeConsultar() {
        return puedeConsultar;
    }

    public void setIdPermisos(int idPermisos) {
        this.idPermisos = idPermisos;
    }

    public void setIdRol(int idRol) {
        this.idRol = idRol;
    }

    public void setIdArea(int idArea) {
        this.idArea = idArea;
    }

    public void setPuedeAgregar(boolean puedeAgregar) {
        this.puedeAgregar = puedeAgregar;
    }

    public void setPuedeEditar(boolean puedeEditar) {
        this.puedeEditar = puedeEditar;
    }

    public void setPuedeEliminar(boolean puedeEliminar) {
        this.puedeEliminar = puedeEliminar;
    }

    public void setPuedeConsultar(boolean puedeConsultar) {
        this.puedeConsultar = puedeConsultar;
    }
    
}
