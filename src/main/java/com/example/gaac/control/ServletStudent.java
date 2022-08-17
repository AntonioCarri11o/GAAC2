package com.example.gaac.control;

import com.example.gaac.model.BeanDocente;
import com.example.gaac.model.BeanMateria;
import com.example.gaac.model.BeanStudent;
import com.example.gaac.model.CodeGenerator;
import com.example.gaac.model.Utils.EmailSender;
import com.mysql.cj.jdbc.exceptions.SQLExceptionsMapping;
import org.apache.commons.mail.EmailException;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ServletStudent",
        urlPatterns = {
                "/list-student",//get
                "/updateStudent",//post
                "/save-student",//post
                "/get-student",//get
                "/status-student",//get
                "/listMaterias",//get
                "/newAdvisory",//get
                "/saveAdvisory",///get
                "/comfirm-student"//post

        }

)
public class ServletStudent extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option=request.getServletPath();
        ServicesStudent servicesStudent = new ServicesStudent();
        ServiceDocente serviceDocente= new ServiceDocente();
        HttpSession session=request.getSession();
        switch (option){
            case "/newAdvisory":
                String materia=request.getParameter("materia");
                List<BeanDocente> listDocenteMateria=serviceDocente.listDocenteMateria(materia);
                request.setAttribute("listDocenteMateria",listDocenteMateria);
                request.setAttribute("materia",materia);
                request.getRequestDispatcher("WEB-INF/view/GuardarAsesoria.jsp").forward(request,response);
                break;

            case "/listMaterias":
                List<BeanMateria> listMaterias = servicesStudent.listMaterias(String.valueOf(session.getAttribute("idCarrera")));
                request.setAttribute("listM",listMaterias);
                request.getRequestDispatcher("WEB-INF/view/SolicitarAsesoria.jsp").forward(request,response);
                break;
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
                String email=request.getParameter("email")!=null?request.getParameter("email"):"";
                try{
                    servicesStudent= new ServicesStudent();
                    BeanStudent student= servicesStudent.getStudent(email);
                    request.setAttribute("studentx",student);
                    request.getRequestDispatcher("/WEB-INF/view/get-Student.jsp").forward(request,response);
                }catch (Exception e){
                    e.printStackTrace();
                }
                break;
            case "/status-student":
                System.out.println("Entró a status-student");
                email=request.getParameter("email")!=null?request.getParameter("email"):"";
                String status=request.getParameter("status")!=null?request.getParameter("status"):"";
                try{
                    //ServicesStudent servicesStudent1 = new ServicesStudent();
                    boolean result =servicesStudent.statusStudent(email,status);
                    response.sendRedirect("list-student?result-update-status"+(result?"ok":"error"));
                }catch (Exception e){
                    e.printStackTrace();
                }
                break;
            case "/saveAdvisory":
                String idMateria=request.getParameter("materia");
                String docenteCorreo=request.getParameter("correo")!=null?request.getParameter("correo"):"";
                String correo=String.valueOf(session.getAttribute("email"));
                boolean result=servicesStudent.saveAdvisory(docenteCorreo, correo,idMateria);
                response.sendRedirect("AsesoriasE");
                break;
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option=request.getServletPath();
        ServicesStudent servicesStudent = new ServicesStudent();
        BeanStudent student= new BeanStudent();
        HttpSession session=request.getSession();
        switch (option){
            case "/save-student":
                boolean result;
                String name=request.getParameter("name")!=null?request.getParameter("name"):"";
                String correo= request.getParameter("email")!=null?request.getParameter("email"):"";
                String password = request.getParameter("password")!=null?request.getParameter("password"):"";
                String carrera= request.getParameter("carrera")!=null?request.getParameter("carrera"):"";
                String tel= request.getParameter("tel")!=null?request.getParameter("tel"):"";
                String sexo= request.getParameter("sexo")!=null?request.getParameter("sexo"):"";
                student.setName(name);
                student.setEmail(correo);
                student.setPassword(password);
                student.setCarrera(carrera);
                student.setTelefono(tel);
                student.setSexo(sexo.charAt(0));
                if(correo.length()<22){
                    response.sendRedirect("EstudiantesRegistro?message=bademail");
                }else{
                    String parts[];
                    parts=correo.split("@");
                    String part1=parts[0];
                    String part2="@"+parts[1];
                    if(part1.substring(0,2).equals("20") && part2.equals("@utez.edu.mx")){
                        CodeGenerator generator= new CodeGenerator();
                        String code= generator.GenerateCode();
                        student.setCode(code);
                        result=servicesStudent.saveStudent(student);
                        if(result!=false){
                            try {
                                EmailSender.sendEmail(1,student.getEmail(),code,1);
                            } catch (EmailException e) {
                                throw new RuntimeException(e);
                            }
                            response.sendRedirect("EstudiantesRegistro?message=succesfully");
                        }else{
                            response.sendRedirect("EstudiantesRegistro?message=error");
                        }
                    }else{
                        response.sendRedirect("EstudiantesRegistro?message=bademail");
                    }
                }
                break;
            case "/comfirm-student":
                String code= request.getParameter("code")!=null?request.getParameter("code"):"";
                result=servicesStudent.comfirmStudent(code);
                if(result!=false){
                    response.sendRedirect("Succesfully?message=succesfully");
                }else{
                    response.sendRedirect("RegistroEstudianteDos?message=error");
                }
                break;
            case "/updateStudent":
                name = request.getParameter("name")!=null?request.getParameter("name"):"";
                carrera=request.getParameter("carrera");
                String nameCarrera=servicesStudent.getNameCarrera(carrera);
                tel= request.getParameter("tel")!=null?request.getParameter("tel"):"";
                sexo=request.getParameter("sexo");
                student.setEmail(String.valueOf(session.getAttribute("email")));
                System.out.println("Hola "+student.getEmail());
                student.setName(name);
                student.setCarrera(carrera);
                student.setTelefono(tel);
                student.setSexo(sexo.charAt(0));
                try{
                    result=servicesStudent.updateStudent(student);
                    session.setAttribute("name",name);
                    session.setAttribute("idCarrera",carrera);
                    session.setAttribute("nameCarrera",nameCarrera);
                    session.setAttribute("sexo",sexo);
                    session.setAttribute("telefono",tel);
                    //List <BeanMateria> listMaterias= servicesStudent.listMaterias(String.valueOf(session.getAttribute("idCarrera")));
                    //session.setAttribute("listMaterias",listMaterias);
                    response.sendRedirect("PerfilStudent");

                }catch (Exception e){
                    e.printStackTrace();
                    response.sendRedirect("PerfilStudent?message=error");
                }
                break;
            default:
                break;
        }
    }
}


