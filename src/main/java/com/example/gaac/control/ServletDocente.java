package com.example.gaac.control;

import com.example.gaac.model.BeanDocente;
import com.example.gaac.model.BeanMateria;
import com.example.gaac.model.CodeGenerator;

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
        "/save-materia",//get
        "/status-materia",//get
        "/perfilDocenteUpdate"//post
}
)
public class ServletDocente extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option = request.getServletPath();
        ServiceDocente serviceDocente = new ServiceDocente();
        HttpSession session = request.getSession();
        String correo= String.valueOf(session.getAttribute("email"));
        String name=String.valueOf(session.getAttribute("name"));
        String ap1= String.valueOf(session.getAttribute("ap1"));
        String ap2=String.valueOf(session.getAttribute("ap2"));
        switch (option){
            case "/listMateriasD":
                List<BeanMateria> listMateriasD = serviceDocente.listMateriasD(correo);
                System.out.println(correo);
                request.setAttribute("list",listMateriasD);
                session.setAttribute("listM",listMateriasD);
                request.getRequestDispatcher("/WEB-INF/view/MateriasD.jsp").forward(request,response);
                break;
            case "/newMateriaD":
                String idcarrera= request.getParameter("idcarrera");
                List<BeanMateria>listMateriasC=serviceDocente.listMateriasC(idcarrera);
                BeanMateria materia=listMateriasC.get(0);
                String carrera= materia.getCarrera();
                request.setAttribute("carrera",carrera);
                request.setAttribute("id",idcarrera);
                request.setAttribute("list",listMateriasC);

                request.getRequestDispatcher("/WEB-INF/view/newMateriaD.jsp").forward(request,response);
                break;

            case "/save-materia":
                try{
                    String idMateria=request.getParameter("materia")!=null?request.getParameter("materia"):"";
                    List <BeanMateria> listMateriasD2=serviceDocente.listMateriasD(correo);
                    boolean find=false;
                    for (int i=0; i<listMateriasD2.size();i++){
                        BeanMateria materia1=listMateriasD2.get(i);
                        if(materia1.getId().equals(idMateria)){
                            find=true;
                        }
                    }
                    if(find!=true){
                        boolean result=serviceDocente.saveMateria(correo,idMateria);
                    }
                    response.sendRedirect("listMateriasD");
                }catch (Exception e){
                    e.printStackTrace();
                    response.sendRedirect("listMateriasD");
                }
                break;
            case "/status-materia":
                try{
                    String id=request.getParameter("id");
                    String estadoUno=request.getParameter("status");
                    String estado="";
                    if(estadoUno.equals("Activa")){
                        estado="Inactiva";
                    }
                    if(estadoUno.equals("Inactiva")){
                        estado="Activa";
                    }
                    boolean result=serviceDocente.statusMateria(correo,id,estado);
                    response.sendRedirect("listMateriasD");
                }catch (Exception e){
                    e.printStackTrace();
                    response.sendRedirect("listMateriasD");
                }

                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServiceDocente serviceDocente= new ServiceDocente();
        String option = request.getServletPath();
        HttpSession session = request.getSession();
        boolean result;
        switch (option){
            case "/newDocente":
                BeanDocente docente= new BeanDocente();
                String name = request.getParameter("name")!=null?request.getParameter("name"):"";
                String apellidoP = request.getParameter("ap1")!=null?request.getParameter("ap1"):"";
                String apellidoM= request.getParameter("ap2")!=null?request.getParameter("ap2"):"";
                String correo = request.getParameter("email")!=null?request.getParameter("email"):"";
                String password= request.getParameter("password")!=null?request.getParameter("password"):"";
                String parts[]=correo.split("@");
                String part1= parts[0];
                String part2="@"+parts[1];
                if(!part1.substring(0,2).equals("20") && part2.equals("@utez.edu.mx")){
                    docente.setName(name);
                    docente.setApellido1(apellidoP);
                    docente.setApellido2(apellidoM);
                    docente.setEmail(correo);
                    docente.setContrasena(password);
                    result= serviceDocente.newDocente(docente);
                    if(result!=false){
                        CodeGenerator generator= new CodeGenerator();
                        String code = generator.GenerateCode();

                        response.sendRedirect("DocenteRegistro?message=succesfully");
                    }else {
                        response.sendRedirect("DocenteRegistro?message=error");
                    }
                }else {
                    response.sendRedirect("DocenteRegistro?message=bademail");
                }

                break;
            case "/perfilDocenteUpdate":
                String nombre=request.getParameter("name")!=null?request.getParameter("name"):String.valueOf(session.getAttribute("name"));
                String ap1=request.getParameter("ap1")!=null?request.getParameter("ap1"):String.valueOf(session.getAttribute("ap1"));
                String ap2=request.getParameter("ap2")!=null?request.getParameter("ap2"):String.valueOf(session.getAttribute("ap2"));
                BeanDocente docente1= new BeanDocente();
                docente1.setName(nombre);
                docente1.setApellido1(ap1);
                docente1.setApellido2(ap2);
                docente1.setEmail(String.valueOf(session.getAttribute("email")));
                result=serviceDocente.updateDocente(docente1);
                try{
                    result =serviceDocente.updateDocente(docente1);
                    if(result!=false){
                        session.setAttribute("name",docente1.getName());
                        session.setAttribute("ap1",docente1.getApellido1());
                        session.setAttribute("ap2",docente1.getApellido2());
                    }
                    response.sendRedirect("PerfilDocente");
                }catch (Exception e){
                    e.printStackTrace();
                    response.sendRedirect("PerfilDocente");
                }

                break;
            default:
                response.sendRedirect("index");
                break;
        }
    }
}
