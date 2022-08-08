package com.example.gaac.model;

public class Cuatrimestre {
    private String idC;
    private String periodo;
    private String estado;
    private int mujeres;
    private int hombres;
    private int otros;
    private int year;

    public String getIdC() {
        return idC;
    }

    public String getPeriodo() {
        return periodo;
    }
    public String getEstado(){
        return estado;
    }
    public int getYear(){
        return year;
    }

    public int getHombres() {
        return hombres;
    }

    public int getMujeres() {
        return mujeres;
    }

    public int getOtros() {
        return otros;
    }

    public void setIdC(String idC) {
        this.idC = idC;
    }

    public void setHombres(int hombres) {
        this.hombres = hombres;
    }

    public void setMujeres(int mujeres) {
        this.mujeres = mujeres;
    }

    public void setOtros(int otros) {
        this.otros = otros;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public void setPeriodo(String periodo) {
        this.periodo = periodo;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public Cuatrimestre(){

    }
}
