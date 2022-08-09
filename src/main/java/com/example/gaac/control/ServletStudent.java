package com.example.gaac.control;

import com.example.gaac.model.BeanStudent;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ServletStudent",
        urlPatterns = {
                "/list-student",//get
                "/save-student",//post
                "/get-student",//get
                "/status-student"//get

        }

)
public class ServletStudent extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option=request.getServletPath();
        ServicesStudent servicesStudent = new ServicesStudent();
        switch (option){
            case "/list-student":
                System.out.println("Entró a liststudent");
                List<BeanStudent> listStudents= servicesStudent.listStudents();
                List<BeanStudent> disabledStudents= new ArrayList<>();
                List<BeanStudent> activeStudents = new ArrayList<>();
                for (int i=0; i<listStudents.size(); i++){
                    BeanStudent student=listStudents.get(i);
                    if(student.getEstado().equals("Activo")){
                        activeStudents.add(student);
                    }else{
                        disabledStudents.add(student);
                    }
                }
                request.setAttribute("whiteList",activeStudents);
                request.setAttribute("dSList", disabledStudents);
                request.setAttribute("list",listStudents);
                request.getRequestDispatcher("/WEB-INF/view/Estudiantes-lista.jsp").forward(request,response);
                break;
            case "/get-student":
                String matricula=request.getParameter("matricula")!=null?request.getParameter("matricula"):"";
                try{
                    servicesStudent= new ServicesStudent();
                    BeanStudent student= servicesStudent.getStudent(matricula);
                    request.setAttribute("studentx",student);
                    request.getRequestDispatcher("/WEB-INF/view/get-Student.jsp").forward(request,response);
                }catch (Exception e){
                    e.printStackTrace();
                }
                break;
            case "/status-student":
                System.out.println("Entró a status-student");
                String matr=request.getParameter("matricula")!=null?request.getParameter("matricula"):"";
                String status=request.getParameter("status")!=null?request.getParameter("status"):"";
                try{
                    //ServicesStudent servicesStudent1 = new ServicesStudent();
                    boolean result =servicesStudent.statusStudent(matr,status);
                    response.sendRedirect("list-student?result-update-status"+(result?"ok":"error"));
                }catch (Exception e){
                    e.printStackTrace();
                }
                break;
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option=request.getServletPath();
        ServicesStudent servicesStudent = new ServicesStudent();
        switch (option){
            case "/save-student":
                try{
                    String name=request.getParameter("name")!=null? request.getParameter("name"):"";
                    String correo= request.getParameter("email")!=null? request.getParameter("email"):"";
                    String sexotochar= request.getParameter("sexo")!=null? request.getParameter("sexo"):"";
                    char sexo=sexotochar.charAt(0);
                    String telefono= request.getParameter("tel")!=null? request.getParameter("tel"):"";
                    String carrera=request.getParameter("carrera")!=null? request.getParameter("carrera"):"";
                    String contrasena=request.getParameter("password")!=null? request.getParameter("password"):"";
                    BeanStudent student= new BeanStudent();
                    student.setEmail(correo);
                    student.setName(name);
                    student.setSexo(sexo);
                    student.setCarrera(carrera);
                    student.setTelefono(telefono);
                    student.setPassword(contrasena);
                    boolean result= servicesStudent.saveStudent(student);
                    response.sendRedirect("EstudiantesRegistro");
                    System.out.println("Todo bien compare");
                    //request.getRequestDispatcher("WEB-INF/view/").forward(request,response);
                }catch (Exception e){
                    e.printStackTrace();
                    response.sendRedirect("EstudiantesRegistro?message?=error");
                }
                break;
            default:
                break;
        }
    }
}


