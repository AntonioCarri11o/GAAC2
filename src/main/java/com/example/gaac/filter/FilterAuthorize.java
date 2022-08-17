package com.example.gaac.filter;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(
        filterName = "FilterAuthorize",
        urlPatterns = {
                "/*"
        }
)
public class FilterAuthorize implements Filter {

    String[] whiteList;

    public void init(FilterConfig config) throws ServletException {
        System.out.println("Filtro Iniciado...");
        whiteList = new String[13];
        whiteList[0] = "/login";
        whiteList[1] = "/index";
        whiteList[2]="/DocenteRegistro";
        whiteList[3]="/EstudiantesRegistro";
        whiteList[4]="/AdminInicioSesion";
        whiteList[5]="/loginDA";
        whiteList[6]="/newDocente";
        whiteList[7]="/save-student";
        whiteList[8]="/RegistroEstudianteDos";
        whiteList[9]="/RegistroDocenteDos";
        whiteList[10]="/comfirm-student";
        whiteList[11]="/comfirm-docente";
        whiteList[12]="/Succesfully";
    }

    public void destroy() {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest) request;
        String path = req.getServletPath();
        System.out.println("Entro a: " + path);
        //Saber si valido la sesion o no?
        boolean isPublic = false;
        for (String item : whiteList){
            if (item.equals(path)){
                isPublic = true;
                break;
            }
        }
        if (isPublic){
            chain.doFilter(request, response);
        }else{
            HttpSession session = req.getSession(false);
            if (session != null){
                System.out.println("Si hay session");
                System.out.println(session);
                if (session.getAttribute("email") != null){
                    System.out.println("Ya inicio session");
                    chain.doFilter(request, response);
                }else{
                    System.out.println("No ha iniciado session");
                    ((HttpServletResponse) response).sendRedirect("index");
                }
            }else{
                System.out.println("No hay session");
                ((HttpServletResponse) response).sendRedirect("index");
            }
        }
    }
}
