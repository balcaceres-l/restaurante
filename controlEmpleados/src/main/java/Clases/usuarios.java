package Clases;
public class usuarios {
    int idUsuario;
    int idRol;
    String usuario;
    String password;

    public usuarios() {
    }

    public usuarios(int idUsuario, int idRol,  String usuario,  String password) {
        this.idUsuario = idUsuario;
        this.idRol = idRol;
      
        this.usuario = usuario;
  
        this.password = password;
    }

    public usuarios(int idRol, String usuario,  String password) {
        this.idRol = idRol;
     
        this.usuario = usuario;
      
        this.password = password;
    }

    public int getIdUsuario() {
        return idUsuario;
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
