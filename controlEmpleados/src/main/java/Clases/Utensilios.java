/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Clases;


public class Utensilios {
    int idUtensilio;
    int idTipo;
    int idCategoria;
    int idProveedor;
    String nombre;
    String descripcion;

    public Utensilios() {
    }

    public Utensilios(int idUtensilio, int idTipo, int idCategoria, int idProveedor, String nombre, String descripcion) {
        this.idUtensilio = idUtensilio;
        this.idTipo = idTipo;
        this.idCategoria = idCategoria;
        this.idProveedor = idProveedor;
        this.nombre = nombre;
        this.descripcion = descripcion;
    }

    public int getIdUtensilio() {
        return idUtensilio;
    }

    public int getIdTipo() {
        return idTipo;
    }

    public int getIdCategoria() {
        return idCategoria;
    }

    public int getIdProveedor() {
        return idProveedor;
    }

    public String getNombre() {
        return nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setIdUtensilio(int idUtensilio) {
        this.idUtensilio = idUtensilio;
    }

    public void setIdTipo(int idTipo) {
        this.idTipo = idTipo;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public void setIdProveedor(int idProveedor) {
        this.idProveedor = idProveedor;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
}
