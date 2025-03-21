/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Clases;

public class roles {
    int idRol;
    String rol;

    public roles(int idRol, String rol) {
        this.idRol = idRol;
        this.rol = rol;
    }

    public roles() {
    }
    
    public int getIdRol() {
        return idRol;
    }

    public String getRol() {
        return rol;
    }

    public void setIdRol(int idRol) {
        this.idRol = idRol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }
    
}
