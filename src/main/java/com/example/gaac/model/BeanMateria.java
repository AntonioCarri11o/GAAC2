package com.example.gaac.model;

public class BeanMateria {
    private String id;
    private String name;
    private String estado;
    private String carrera;

    public BeanMateria() {

    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    public String getCarrera(){
        return carrera;
    }
    public void setCarrera(String carrera){
        this.carrera=carrera;
    }
}
