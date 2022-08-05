package com.example.gaac.model;

public class BeanLogin {
    private String correo;
    private String password;

    private int role;
    public BeanLogin(){

    }
    public BeanLogin(String correo, String nickname, String password, int role){
        this.correo=correo;
        this.password=password;
    }

    public String getCorreo() {
        return correo;
    }


    public String getPassword() {
        return password;
    }

    public int getRole() {
        return role;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setRole(int role) {
        this.role = role;
    }
}
