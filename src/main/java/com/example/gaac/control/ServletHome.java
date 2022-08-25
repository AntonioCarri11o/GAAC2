
package com.example.gaac.control;

//import com.example.gaac.model.BeanStudent;
import com.example.gaac.model.BeanDocente;
import com.example.gaac.model.BeanMateria;
import com.example.gaac.model.BeanSesion;
import com.example.gaac.model.BeanStudent;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
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
        "/motivo",//get
        "/rejectAdvisory",//get
        "/RegistroDocenteDos",//get
        "/cancelAdvisory",//post
        "/pruebas"

}
)
public class ServletHome extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session= request.getSession();
        String option = request.getServletPath();
        ServicesStudent servicesStudent= new ServicesStudent();
        ServiceDocente serviceDocente= new ServiceDocente();
        BeanStudent student= new BeanStudent();
        BeanDocente docente= new BeanDocente();

        List <BeanSesion>canSesions= new ArrayList<>();
        List <BeanSesion>impSesions= new ArrayList<>();
        List <BeanSesion>penSesions= new ArrayList<>();
        List <BeanSesion>rechSesions= new ArrayList<>();
        List <BeanSesion>solSesions= new ArrayList<>();
        String estado;
        int id;
        switch (option){
            case "/rejectAdvisory":
                id=Integer.parseInt(request.getParameter("id"));
                request.setAttribute("id",id);
                request.getRequestDispatcher("WEB-INF/view/RechazarAsesoria.jsp").forward(request,response);
                break;
            case "/motivo":
                id=Integer.parseInt(request.getParameter("id"));
                estado=request.getParameter("estado");
                System.out.println(estado);
                String motivo=servicesStudent.motivo(id);
                System.out.println(motivo);
                request.setAttribute("motivo",motivo);
                request.setAttribute("id",id);
                request.setAttribute("estado",estado);
                request.getRequestDispatcher("WEB-INF/view/ConsultarAsesoria.jsp").forward(request,response);
                break;
            case "/cancelAdvisory":
                id=Integer.parseInt(request.getParameter("id"));
                request.setAttribute("id",id);
                request.getRequestDispatcher("WEB-INF/view/motivo.jsp").forward(request,response);
                break;
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
                try{
                    List <BeanSesion>listSesions=servicesStudent.listSesions(student.getEmail());
                    for (int i=0;i<listSesions.size();i++){
                        BeanSesion sesion=listSesions.get(i);
                        estado=sesion.getEstado();
                        switch (estado){
                            case "cancelada":
                                canSesions.add(sesion);
                                break;
                            case "impartida":
                                impSesions.add(sesion);
                                break;
                            case "pendiente":
                                penSesions.add(sesion);
                                break;
                            case "rechazada":
                                rechSesions.add(sesion);
                                break;
                            case "solicitada":
                                solSesions.add(sesion);
                                break;
                        }
                    }
                    request.setAttribute("canList",canSesions);
                    request.setAttribute("impList",impSesions);
                    request.setAttribute("penList",penSesions);
                    request.setAttribute("rechList",rechSesions);
                    request.setAttribute("solList",solSesions);
                    request.setAttribute("list",listSesions);
                }catch (Exception e){
                    e.printStackTrace();
                }

                request.getRequestDispatcher("WEB-INF/view/Asesorias.jsp").forward(request,response);
                break;
            case "/AsesoriasD":
                try{
                    List<BeanSesion>listSesionsD=serviceDocente.listSesions(String.valueOf(session.getAttribute("email")));
                    for(int i=0;i<listSesionsD.size();i++){
                        BeanSesion sesion=listSesionsD.get(i);
                        estado=sesion.getEstado();
                        switch (estado){
                            case "cancelada":
                                canSesions.add(sesion);
                                break;
                            case "impartida":
                                impSesions.add(sesion);
                                break;
                            case "pendiente":
                                penSesions.add(sesion);
                                break;
                            case "rechazada":
                                rechSesions.add(sesion);
                                break;
                            case "solicitada":
                                solSesions.add(sesion);
                                break;
                        }
                    }
                    request.setAttribute("canList",canSesions);
                    request.setAttribute("impList",impSesions);
                    request.setAttribute("penList",penSesions);
                    request.setAttribute("rechList",rechSesions);
                    request.setAttribute("solList",solSesions);
                    request.setAttribute("list",listSesionsD);
                }catch (Exception e){
                    e.printStackTrace();
                }
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
