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
    String rol;
    
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

    public usuarios(String usuario, String nombre, String apellido, String rol, Date inicio) {
        this.usuario = usuario;
        this.nombre = nombre;
        this.apellido = apellido;
        this.rol = rol;
        this.inicio = inicio;
        
    }

    public usuarios(int idEmpleado, String nombre, String apellido, Date inicio) {
        this.idUsuario = idEmpleado;
        this.nombre = nombre;
        this.apellido = apellido;
        this.inicio = inicio;
    }
    
    
    public int getIdUsuario() {
        return idUsuario;
    }

    public Date getInicio() {
        return inicio;
    }

    public String getRol() {
        return rol;
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

    public void setInicio(Date inicio) {
        this.inicio = inicio;
    }

    public void setRol(String rol) {
        this.rol = rol;
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
