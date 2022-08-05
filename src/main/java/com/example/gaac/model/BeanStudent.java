
package com.example.gaac.model;

public class BeanStudent {
    private String name;
    private String email;
    private char sexo;
    private String telefono;
    private String carrera;
    private String password;

    private String matricula;

    private String estado;

    private String cuatrimestre;
    public BeanStudent(){

    }
    public BeanStudent(String nombre, String email, String contrasena, String carrera, String telefono, char sexo, String matricula, String estado){
        this.name=nombre;
        this.email=email;
        this.password=contrasena;
        this.carrera=carrera;
        this.telefono=telefono;
        this.sexo=sexo;
        this.matricula=matricula;
        this.estado=estado;
    }
    public String getName(){
        return name;
    }
    public String getEmail(){
        return email;
    }
    public char getSexo(){
        return sexo;
    }

    public String getCarrera() {
        return carrera;
    }

    public String getTelefono() {
        return telefono;
    }

    public String getPassword() {
        return password;
    }

    public String getMatricula() {
        return matricula;
    }

    public String getEstado() {
        return estado;
    }

    public String getCuatrimestre() {
        return cuatrimestre;
    }

    public void setName(String name){
        this.name=name;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public void setSexo(char sexo) {
        this.sexo = sexo;
    }

    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public void setCuatrimestre(String cuatrimestre) {
        this.cuatrimestre = cuatrimestre;
    }
}
