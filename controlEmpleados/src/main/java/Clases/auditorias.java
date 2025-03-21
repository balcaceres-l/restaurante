/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Clases;


public class auditorias {
    int idAuditoria;
    String nombreTabla;
    int idUsuario;
    String accion;

    public auditorias() {
    }

    public auditorias(int idAuditoria, String nombreTabla, int idUsuario, String accion) {
        this.idAuditoria = idAuditoria;
        this.nombreTabla = nombreTabla;
        this.idUsuario = idUsuario;
        this.accion = accion;
    }

    public void setIdAuditoria(int idAuditoria) {
        this.idAuditoria = idAuditoria;
    }

    public void setNombreTabla(String nombreTabla) {
        this.nombreTabla = nombreTabla;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public void setAccion(String accion) {
        this.accion = accion;
    }

    public int getIdAuditoria() {
        return idAuditoria;
    }

    public String getNombreTabla() {
        return nombreTabla;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public String getAccion() {
        return accion;
    }
    
}
