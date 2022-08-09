package com.example.gaac.control;

import com.example.gaac.model.BeanDocente;
import com.example.gaac.model.BeanMateria;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletDocente",
urlPatterns = {
        "/newDocente",//post
        "/newMateriaD",//get
        "/listMateriasD",//get
        "/save-materia"//get
}
)
public class ServletDocente extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option = request.getServletPath();
        ServiceDocente serviceDocente = new ServiceDocente();
        switch (option){
            case "/listMateriasD":
                HttpSession session = request.getSession();
                String correo= String.valueOf(session.getAttribute("name"));
                List<BeanMateria> listMateriasD = serviceDocente.listMateriasD(correo);
                System.out.println(correo);
                request.setAttribute("list",listMateriasD);
                request.getRequestDispatcher("/WEB-INF/view/MateriasD.jsp").forward(request,response);
                break;
            case "/newMateriaD":
                String idcarrera= request.getParameter("carrera");
                List<BeanMateria>listMateriasC=serviceDocente.listMateriasC(idcarrera);
                request.setAttribute("id",idcarrera);
                request.setAttribute("list",listMateriasC);
                request.getRequestDispatcher("/WEB-INF/view/newMateriaD.jsp").forward(request,response);
                break;

            case "/save-materia":

                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServiceDocente serviceDocente= new ServiceDocente();
        String option = request.getServletPath();
        switch (option){
            case "/newDocente":
                try{
                    BeanDocente docente= new BeanDocente();
                    String name = request.getParameter("name")!=null?request.getParameter("name"):"";
                    String apellidoP = request.getParameter("ap1")!=null?request.getParameter("ap1"):"";
                    String apellidoM= request.getParameter("ap2")!=null?request.getParameter("ap2"):"";
                    String correo = request.getParameter("email")!=null?request.getParameter("email"):"";
                    String password= request.getParameter("password")!=null?request.getParameter("password"):"";
                    docente.setName(name);
                    docente.setApellido1(apellidoP);
                    docente.setApellido2(apellidoM);
                    docente.setEmail(correo);
                    docente.setContrasena(password);
                    boolean result= serviceDocente.newDocente(docente);
                    response.sendRedirect("DocenteRegistro");
                }catch (Exception e){
                    e.printStackTrace();
                }

                break;
            default:
                response.sendRedirect("index");
                break;
        }
    }
}
