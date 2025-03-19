package Clases;
public class usuarios {
    int idUsuario;
    int idRol;
    String nombre;
    String apellido;
    String usuario;
    String correo;
    String password;

    public usuarios() {
    }

    public usuarios(int idUsuario, int idRol, String nombre, String apellido, String usuario, String correo, String password) {
        this.idUsuario = idUsuario;
        this.idRol = idRol;
        this.nombre = nombre;
        this.apellido = apellido;
        this.usuario = usuario;
        this.correo = correo;
        this.password = password;
    }

    public usuarios(int idRol, String nombre, String apellido, String usuario, String correo, String password) {
        this.idRol = idRol;
        this.nombre = nombre;
        this.apellido = apellido;
        this.usuario = usuario;
        this.correo = correo;
        this.password = password;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public int getIdRol() {
        return idRol;
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public String getUsuario() {
        return usuario;
    }

    public String getCorreo() {
        return correo;
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

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
}
