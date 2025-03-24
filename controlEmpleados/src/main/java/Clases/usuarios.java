package Clases;

import java.util.Date;

public class usuarios {
    int idUsuario;
    int idRol;
    String usuario;
    String password;
    String nombre;
    String apellido;
    String correo;
    Date inicio;
    public usuarios() {
    }

    public usuarios(int idUsuario, int idRol,  String usuario,  String password) {
        this.idUsuario = idUsuario;
        this.idRol = idRol;
      
        this.usuario = usuario;
  
        this.password = password;
    }

    

    public usuarios(int idRol, String usuario, String password, String nombre, String apellido, String correo) {
        this.idRol = idRol;
        this.usuario = usuario;
        this.password = password;
        this.nombre = nombre;
        this.apellido = apellido;
        this.correo = correo;
    }
    

    public usuarios(int idRol, String usuario,  String password) {
        this.idRol = idRol;
     
        this.usuario = usuario;
      
        this.password = password;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public String getNombre() {
        return nombre;
    }
    
    public String getApellido() {
        return apellido;
    }

    public String getCorreo() {
        return correo;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    
    public int getIdRol() {
        return idRol;
    }

  

    public String getUsuario() {
        return usuario;
    }

   
    public String getPassword() {
        return password;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public void setIdRol(int idRol) {
        this.idRol = idRol;
    }

    

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }


    public void setPassword(String password) {
        this.password = password;
    }
    
}
