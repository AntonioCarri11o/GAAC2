package com.example.gaac.control;

import com.example.gaac.model.BeanLogin;
import com.example.gaac.model.BeanMateria;
import com.example.gaac.model.BeanStudent;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Servletlogin",
urlPatterns = {
        "/loginDA",//post
        "/logout"//get
}
)
public class Servletlogin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option=request.getServletPath();
        if(option.equals("/logout")){
            System.out.println("Entró");
            HttpSession session= request.getSession(false);
            if(session!=null){
                session.invalidate();
                response.sendRedirect("index");
            }else{
                response.sendRedirect("index");
            }
        }else{
            response.sendRedirect("index");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option=request.getServletPath();
        ServicesStudent servicesStudent= new ServicesStudent();
        switch (option){
            case "/loginDA":
                String email = request.getParameter("email")!=null?
                        request.getParameter("email"):"";
                String password= request.getParameter("password")!=null?
                        request.getParameter("password"):"";
                String rolestring=getInitParameter("role")==null?
                        request.getParameter("role"):"0";
                int role=Integer.parseInt(rolestring);
                System.out.println(role);
                ServiceLogin serviceLogin= new ServiceLogin();
                BeanLogin login = serviceLogin.login(email, password, role);
                if(role==1){
                    if (login.getCorreo()!=null){
                        HttpSession session= request.getSession(true);
                        BeanStudent student=servicesStudent.getStudent(login.getCorreo());
                        session.setAttribute("role",role);
                        session.setAttribute("email",login.getCorreo());
                        session.setAttribute("idCarrera",student.getCarrera());
                        response.sendRedirect("AsesoriasE");
                    }else {
                        response.sendRedirect("login?message=error");
                    }
                }
                if (role==2){
                    if(login.getCorreo()!=null){
                        HttpSession session=request.getSession(true);
                        session.setAttribute("role",role);
                        session.setAttribute("email",login.getCorreo());
                        session.setAttribute("name",login.getName());
                        session.setAttribute("ap1",login.getAp1());
                        session.setAttribute("ap2",login.getAp2());
                        response.sendRedirect("AsesoriasD");
                        //request.getRequestDispatcher("/WEB-INF/view/AsesoriasD.jsp").forward(request,response);
                    }else{
                        response.sendRedirect("login?message=error");
                    }
                }
                if(role==3){
                    if(login.getCorreo()!=null){
                        HttpSession session=request.getSession(true);
                        session.setAttribute("email",login.getCorreo());
                        response.sendRedirect("list-cuatrimestre");
                    }else{
                        response.sendRedirect("AdminInicioSesion?message=error");
                    }
                }
                if(role==0){
                    response.sendRedirect("login?message=error");
                }

                break;
            default:
                break;
        }
    }
}
