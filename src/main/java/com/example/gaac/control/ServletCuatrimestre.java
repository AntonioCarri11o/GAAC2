package com.example.gaac.control;

import com.example.gaac.model.Cuatrimestre;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ServletCuatrimestre",
        urlPatterns={
        "/saveCuatrimestre",
                "/list-cuatrimestre",
                "/statusCuatrimestre"//get
}
)
public class ServletCuatrimestre extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option = request.getServletPath();
        ServiceCuatrimestre serviceCuatrimestre= new ServiceCuatrimestre();
        switch (option){
            case "/saveCuatrimestre":
                try{
                    Cuatrimestre cuatrimestre= new Cuatrimestre();
                    String periodo=request.getParameter("periodo");
                    String yeartoString=request.getParameter("year");
                    int year = Integer.parseInt(yeartoString);
                    cuatrimestre.setPeriodo(periodo);
                    cuatrimestre.setYear(year);
                    boolean result=serviceCuatrimestre.newCuatrimestre(cuatrimestre);
                    response.sendRedirect("list-cuatrimestre");
                }catch (Exception e){
                    e.printStackTrace();
                    response.sendRedirect("list-cuatrimestre?message=error");
                }
                break;
            case "/list-cuatrimestre":
                List <Cuatrimestre> cuatrimestres= serviceCuatrimestre.listCuatrimestre();
                request.setAttribute("list", cuatrimestres);
                request.getRequestDispatcher("WEB-INF/view/Cuatrimestre.jsp").forward(request, response);
                break;
            case "/statusCuatrimestre":
                List <Cuatrimestre> cuatrimestres1=serviceCuatrimestre.listCuatrimestre();
                String id= request.getParameter("id")!=null?request.getParameter("id"):"";
                String estadoUno=request.getParameter("status")!=null?request.getParameter("status"):"";
                String estado="";
                if(estadoUno.equals("Activo")){
                    estado="Inactivo";
                }
                if(estadoUno.equals("Inactivo")){
                    int l=0;
                    for (int i=0; i<cuatrimestres1.size();i++){
                        Cuatrimestre cuatrimestre= cuatrimestres1.get(i);
                        if(cuatrimestre.getEstado().equals("Activo")){
                            l++;
                        }
                    }
                    if(l==0){
                        estado="Activo";
                    }else {
                        estado="Inactivo";
                    }
                }
                try{
                    boolean result= serviceCuatrimestre.statusCuatrimestre(id,estado);
                    response.sendRedirect("list-cuatrimestre");
                }catch (Exception e){
                    e.printStackTrace();
                }
                break;

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
