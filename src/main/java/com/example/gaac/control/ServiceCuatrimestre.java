package com.example.gaac.control;

import com.example.gaac.model.Cuatrimestre;
import com.example.gaac.model.Utils.DaoCuatrimestre;

import java.util.ArrayList;
import java.util.List;

public class ServiceCuatrimestre {
    public List<Cuatrimestre> listCuatrimestre(){
        DaoCuatrimestre daoCuatrimestre=new DaoCuatrimestre();
        List<Cuatrimestre> listCuatrimestre= daoCuatrimestre.listCuatrimestre();
        return listCuatrimestre;
    }
    public boolean newCuatrimestre(Cuatrimestre cuatrimestre){
        DaoCuatrimestre daoCuatrimestre= new DaoCuatrimestre();
        boolean result=daoCuatrimestre.newCuatrimestre(cuatrimestre);
        return result;
    }
}
