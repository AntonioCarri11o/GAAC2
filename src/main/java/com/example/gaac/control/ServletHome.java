
package com.example.gaac.control;

//import com.example.gaac.model.BeanStudent;
import com.example.gaac.model.BeanMateria;
import com.example.gaac.model.BeanSesion;
import com.example.gaac.model.BeanStudent;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletHome",
urlPatterns = {
        "/login",//get
        "/DocenteRegistro",//get
        "/EstudiantesRegistro",//get
        "/AdminInicioSesion",//get
        "/index",//get
        "/PerfilStudent",//get
        "/AsesoriasE",//get
        "/AsesoriasD",//get
        "/Cuatrimestre",//get
        "/Materias",//get
        "/PerfilDocente",
        "/newCuatrimestre",//get
        "/carreras",//get
        "/RegistroEstudianteDos",//get
        "/Succesfully",//get
        "/RegistroDocenteDos",//get
        "/pruebas"

}
)
public class ServletHome extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session= request.getSession();
        String option = request.getServletPath();
        ServicesStudent servicesStudent= new ServicesStudent();
        BeanStudent student= new BeanStudent();
        switch (option){
            case "/login":
                request.getRequestDispatcher("WEB-INF/view/login.jsp").forward(request, response);
                break;
            case "/DocenteRegistro":
                request.getRequestDispatcher("WEB-INF/view/DocenteRegistro.jsp").forward(request,response);
                break;
            case "/EstudiantesRegistro":
                request.getRequestDispatcher("WEB-INF/view/registroEstudiante.jsp").forward(request, response);
                break;
            case "/AdminInicioSesion":
                request.getRequestDispatcher("WEB-INF/view/AdminInicioSesion.jsp").forward(request, response);
                break;
            case"/index":
                request.getRequestDispatcher("index.jsp").forward(request, response);
                break;
            case "/PerfilStudent":
                request.getRequestDispatcher("WEB-INF/view/PerfilStudent.jsp").forward(request, response);
                break;
            case "/PerfilDocente":
                request.getRequestDispatcher("WEB-INF/view/PerfilDocente.jsp").forward(request,response);
                break;
            case "/AsesoriasE":
                student=servicesStudent.getStudent(String.valueOf(session.getAttribute("email")));
                session.setAttribute("email",student.getEmail());
                session.setAttribute("name",student.getName());
                session.setAttribute("telefono",student.getTelefono());
                session.setAttribute("sexo",String.valueOf(student.getSexo()));
                session.setAttribute("matricula",student.getMatricula());
                session.setAttribute("carrera",student.getCarrera());
                String nameCarrera=servicesStudent.getNameCarrera(String.valueOf(session.getAttribute("carrera")));
                student.setNameCarrera(nameCarrera);
                session.setAttribute("nameCarrera",nameCarrera);
                List <BeanSesion>listSesions=servicesStudent.listSesions(student.getEmail());
                request.setAttribute("list",listSesions);
                request.getRequestDispatcher("WEB-INF/view/Asesorias.jsp").forward(request,response);
                break;
            case "/AsesoriasD":
                request.getRequestDispatcher("WEB-INF/view/AsesoriasD.jsp").forward(request, response);
                break;
            case "/newCuatrimestre":
                request.getRequestDispatcher("WEB-INF/view/saveCuatrimestre.jsp").forward(request, response);
                break;
            case "/pruebas":
                request.getRequestDispatcher("WEB-INF/view/pruebas.jsp").forward(request,response);
                break;
            case "/carreras":
                request.getRequestDispatcher("WEB-INF/view/Carreras.jsp").forward(request,response);
                break;
            case "/RegistroEstudianteDos":
                request.getRequestDispatcher("WEB-INF/view/EstudiantesConfirma.jsp").forward(request,response);
                break;
            case "/RegistroDocenteDos":
                request.getRequestDispatcher("WEB-INF/view/DocenteConfirma.jsp").forward(request,response);
                break;
            case "/Succesfully":
                request.getRequestDispatcher("WEB-INF/view/RegistroExitoso.jsp").forward(request,response);
                break;
            /*default:
                response.sendRedirect("index");*/
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option=request.getServletPath();
        switch (option){

        }
    }
}
