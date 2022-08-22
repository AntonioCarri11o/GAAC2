package com.example.gaac.control;

import com.example.gaac.model.*;

import java.util.ArrayList;
import java.util.List;

public class ServiceDocente {
    public List<BeanSesion> listSesions(String correo){
        DaoDocente daoDocente= new DaoDocente();
        List<BeanSesion> listSesions=daoDocente.listSesions(correo);
        return listSesions;
    }
    public boolean newDocente(BeanDocente docente){
        DaoDocente daoDocente= new DaoDocente();
        boolean result=daoDocente.saveDocente(docente);
        return result;
    }
    public boolean statusMateria(String correo, String id, String estado){
        DaoDocente daoDocente= new DaoDocente();
        boolean result=daoDocente.statusMateria(correo,id,estado);
        return result;
    }
    public boolean updateDocente(BeanDocente docente){
        DaoDocente daoDocente= new DaoDocente();
        boolean result=daoDocente.updateDocente(docente);
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
    public boolean saveMateria(String correo, String idMateria){
        DaoDocente daoDocente= new DaoDocente();
        boolean result= daoDocente.saveMateria(correo,idMateria);
        return result;
    }
    public boolean comfirmTeacher(String code){
        DaoDocente daoDocente=new DaoDocente();
        boolean result=daoDocente.comfirmTeacher(code);
        return result;
    }
    public List<BeanDocente> listDocenteMateria(String materia){
        DaoDocente daoDocente= new DaoDocente();
        List<BeanDocente>listDocenteMateria= daoDocente.listDocenteMateria(materia);
        return listDocenteMateria;
    }
}
