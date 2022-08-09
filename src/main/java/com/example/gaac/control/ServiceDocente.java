package com.example.gaac.control;

import com.example.gaac.model.BeanDocente;
import com.example.gaac.model.BeanMateria;
import com.example.gaac.model.DaoDocente;

import java.util.ArrayList;
import java.util.List;

public class ServiceDocente {
    public boolean newDocente(BeanDocente docente){
        DaoDocente daoDocente= new DaoDocente();
        boolean result=daoDocente.saveDocente(docente);
        return result;
    }
    public List<BeanMateria> listMateriasD(String correo){
        DaoDocente daoDocente= new DaoDocente();
        List<BeanMateria> listMateriasD=daoDocente.listMateriasD(correo);
        return listMateriasD;
    }
    public List<BeanMateria> listMateriasC(String idCarrera){
        DaoDocente daoDocente= new DaoDocente();
        List <BeanMateria> listMateriasC= daoDocente.listMateriasC(idCarrera);
        return listMateriasC;

    }
}
