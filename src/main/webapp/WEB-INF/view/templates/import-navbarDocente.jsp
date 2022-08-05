<%--
  Created by IntelliJ IDEA.
  User: Antonio Carrillo
  Date: 04/08/2022
  Time: 12:58 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header>
    <nav class="navbar">
        <div class="container-fluid" style=" padding: 0 0 0 0;">
            <div class="row" style="width:100%;  margin: 0;">
                <div class="col" style="display:flex;">
                    <button class="btn btnmenu " type="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="fa-solid fa-bars fa-2xl"></i>
                    </button>
                    <ul class="dropdown-menu">
                        <li><a href="PerfilDocente" class="dropdown-item" href="#" style="border-radius: .5em .5em 0 0;">Mi perfil</a></li>
                        <li><a href="AsesoriasD" class="dropdown-item" href="#">Asesorías</a></li>
                        <li><a href="Materias" class="dropdown-item" href="#">Materias</a></li>
                        <li><a class="dropdown-item" href="logout" style="border-radius: 0 0 .5em .5em;"><i class="fa-solid fa-power-off fa-sm"></i> Cerrar sesión </a>
                    </ul>
                </div>
                <div class="col" style="text-align:center;color: white; margin: auto 0 auto 0; font-size: 2em;">
                    Solicitudes
                </div>
                <div class="col" style="text-align: right; padding: 0 0 0 0;">
                    <img src="/img/Logo-utez.png" style="max-width: 7em;" alt="">
                </div>
            </div>

        </div>
    </nav>
</header>