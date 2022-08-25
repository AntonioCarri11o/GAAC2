package com.example.gaac.control;
import com.example.gaac.model.*;
import com.example.gaac.model.Utils.DaoCuatrimestre;

import java.util.List;

public class ServicesStudent {
    public boolean newMotivo(int id, String motivo){
        DaoStudent daoStudent= new DaoStudent();
        boolean result=daoStudent.newMotivo(id,motivo);
        return result;
    }
    public boolean updateStatusAdv(int id, String estado, String correo, String sexo, String id_cuatrimestre){
        DaoStudent daoStudent= new DaoStudent();
        DaoCuatrimestre daoCuatrimestre= new DaoCuatrimestre();
        boolean found;
        boolean contador;
        boolean result= daoStudent.updateStatusAdv(id,estado);
        if(result!=false){
            if(estado.equals("impartida")){
                found=daoStudent.found(correo);
                contador= daoCuatrimestre.contador(sexo,id_cuatrimestre, found);

            }
        }

        return result;
    }
    public String motivo(int id){
        DaoStudent daoStudent= new DaoStudent();
        String motivo=daoStudent.consultaMotivo(id);
        return motivo;
    }
    public int valida(String correo){
        DaoStudent daoStudent= new DaoStudent();
        int result = daoStudent.valida(correo);
        return result;
    }
    public List<BeanStudent> listStudents(){
        DaoStudent daoStudent= new DaoStudent();
        List<BeanStudent> listStudents= daoStudent.listStudents();
        return listStudents;
    }
    public boolean saveStudent(BeanStudent student){
        DaoStudent daoStudent = new DaoStudent();
        boolean result =daoStudent.newStudent(student);
        return result;
    }
    public boolean updateStudent(BeanStudent student){
        DaoStudent daoStudent= new DaoStudent();
        boolean result=daoStudent.updateStudent(student);
        return result;
    }
    public boolean statusStudent(String email, String status){
        DaoStudent daoStudent= new DaoStudent();
        boolean result=daoStudent.statusStudent(email, status);
        return result;
    }
    public BeanStudent getStudent(String email){
        DaoStudent daoStudent= new DaoStudent();
        BeanStudent student= daoStudent.getStudent(email);
        return student;
    }
    public String getNameCarrera(String email){
        DaoStudent daoStudent = new DaoStudent();
        String nameCarrera= daoStudent.getNameCarrera(email);
        return  nameCarrera;
    }
    public boolean comfirmStudent(String code){
        DaoStudent daoStudent= new DaoStudent();
        boolean result= daoStudent.comfirmStudent(code);
        return result;
    }
    public List<BeanMateria>listMaterias(String carrera){
        DaoStudent daoStudent= new DaoStudent();
        List<BeanMateria> listMaterias=daoStudent.listMaterias(carrera);
        return listMaterias;
    }
    public  boolean saveAdvisory(String emailTeacher, String emailStudent, String materia, String idCuatrimestre){
        DaoStudent daoStudent = new DaoStudent();
        boolean result= daoStudent.saveAdvisory(emailTeacher, emailStudent,materia,idCuatrimestre);
        return result;
    }
    public List<BeanSesion>listSesions(String correo){
        DaoStudent daoStudent= new DaoStudent();
        List <BeanSesion>listSesions=daoStudent.listSesions(correo);
        return  listSesions;
    }
}
