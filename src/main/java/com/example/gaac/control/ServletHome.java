
package com.example.gaac.control;

//import com.example.gaac.model.BeanStudent;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

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
        "/PerfilDocente"//get

}
)
public class ServletHome extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option = request.getServletPath();
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
                request.getRequestDispatcher("WEB-INF/view/Asesorias.jsp").forward(request,response);
            case "/AsesoriasD":
                request.getRequestDispatcher("WEB-INF/view/AsesoriasD.jsp").forward(request, response);
                break;
            case "/Cuatrimestre":
                request.getRequestDispatcher("WEB-INF/view/Cuatrimestre.jsp").forward(request,response);
            default:
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
