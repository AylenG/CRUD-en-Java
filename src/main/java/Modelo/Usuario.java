
package Modelo;


public class Usuario {
    int id;
    String apNom;
    String email;
    int edad;

    public Usuario() {
    }

    public Usuario(String apNom, String email, int edad) {
        this.apNom = apNom;
        this.email = email;
        this.edad = edad;
    }

    public String getApNom() {
        return apNom;
    }

    public void setApNom(String apNom) {
        this.apNom = apNom;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
}
