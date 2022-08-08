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
                "/list-cuatrimestre"//get
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

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
