package com.example.gaac.control;
import com.example.gaac.model.BeanStudent;
import com.example.gaac.model.DaoStudent;

import java.util.List;

public class ServicesStudent {
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
    public boolean statusStudent(String matricula, String status){
        DaoStudent daoStudent= new DaoStudent();
        boolean result=daoStudent.statusStudent(matricula, status);
        return result;
    }
    public BeanStudent getStudent(String matricula){
        DaoStudent daoStudent= new DaoStudent();
        BeanStudent student= daoStudent.getStudent(matricula);
        return student;
    }
}
