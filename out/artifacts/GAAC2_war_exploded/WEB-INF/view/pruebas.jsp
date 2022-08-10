<%--
  Created by IntelliJ IDEA.
  User: Antonio Carrillo
  Date: 06/08/2022
  Time: 03:13 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Hello, world!</title>
</head>
<body>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }


    *{
        box-sizing: border-box;
    }

    html{
        scroll-behavior: smooth;
    }

    body{
        font-family: 'Roboto', sans-serif;
        margin: 0;
        background-image: radial-gradient(#4192df 0.5px, transparent 0.5px), radial-gradient(#6999d8 0.5px, #919dd8 0.5px);

    }
    .btn-a{
        background-color: #0F196C;
        border: 0px;
        padding: 60px 100px;
        color: white;
        font-size: 40px;
        border-radius: 5px;
        font-weight: bold;
        border: 2px solid rgba(0,0,0,0.3);
        box-shadow: 2px 2px 10px rgba(0,0,0,0.5);


    }
    .w{
        background-color: blue;
        color: brown;
    }
    .container{
        background-color: white;
    }

    button:hover{
        background-color: green;
    }

    .col-md-6{
        justify-content: center;
        text-align: center;
        flex-direction: column;
        margin-bottom: 30px;
    }

    a{
        color: white;
        text-decoration: none;
        margin: auto;
        margin-left: 20px;
    }

    label{
        margin-left: 70px;
        border: 1px;
    }

    .btn btn-danger{
        margin-left: 20px;
    }

    #solicitudes:checked ~ #tablas #dos,#solicitudes:checked ~ #tablas #tres,#solicitudes:checked ~ #tablas #cuatro {
        display: none;
    }

    #canceladas:checked ~ #tablas #uno,#canceladas:checked ~ #tablas #dos,#canceladas:checked ~ #tablas #tres {
        display: none;
    }

    #pendientes:checked ~ #tablas #uno,#pendientes:checked ~ #tablas #dos,#pendientes:checked ~ #tablas #cuatro {
        display: none;
    }

    #rechazadas:checked ~ #tablas #uno,#rechazadas:checked ~ #tablas #cuatro,#rechazadas:checked ~ #tablas #tres {
        display: none;
    }
</style>
<div class="collapse" id="navbarToggleExternalContent">
    <div  style="background-color: #0F196C;">

        <a href="">Mi perfil</a>
        <a href="">Asesorias</a>
        <a href="">Materias</a>
        <span onclick="confirmDeelete()" style="color: white; margin-left: 20px;"> Cerrar sesión</span>

    </div>

</div>
<nav class="navbar navbar-dark " style="background-color: #0F196C;">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <h4 class="float-start" style="color: honeydew; margin-right: 100px; ">Carreras</h4>
        <img src="utez (2).jpg" style="width: 100px;">
    </div>
</nav>

<br>

<div class="container">
    <label for="">filtrar</label>
    <label for="todo">todo</label>
    <input type="radio" name="filtro" id="todo">
    <label for="canceladas">canceladas</label>
    <input type="radio" name="filtro" id="canceladas">
    <label for="pendientes">pendientes</label>
    <input type="radio" name="filtro" id="pendientes">
    <label for="rechazadas">rechazadas</label>
    <input type="radio" name="filtro" id="rechazadas">
    <label for="solicitudes">Solicitudes</label>
    <input type="radio" name="filtro" id="solicitudes">
    <div id="tablas">
        <table id="uno"  class="table table-striped ">
            <thead>
            <tr>
                <th style="background-color: #0F196C ; color: white;" scope="col">Fecha</th>
                <th style="background-color: #0F196C ; color: white;" scope="col">Materia</th>
                <th style="background-color: #0F196C ; color: white;" scope="col">Matricula</th>
                <th style="background-color: #0F196C ; " scope="col"></th>
            </tr>

            </thead>
            <tbody>
            <tr>
                <th scope="row">08/02/2022</th>
                <td>Aplicaciones Web</td>
                <td>20203tn078</td>
                <td>  <button type="button" class="btn btn-primary"  data-bs-toggle="modal" data-bs-target="#aplicacionesweb">Responder</button></td>
            </tr>
            <tr>
                <th scope="row">08/02/2022</th>
                <td>Diseño digital</td>
                <td>20203tn078</td>
                <td>  <button type="button" class="btn btn-primary"  data-bs-toggle="modal" data-bs-target="#aplicacionesweb" >Responder</button></td>
            </tr>
            <tr>
                <th scope="row">08/02/2022</th>
                <td>Diseño digital</td>
                <td>20203tn078</td>
                <td>  <button type="button" class="btn btn-primary"   data-bs-toggle="modal" data-bs-target="#aplicacionesweb">Responder</button></td>
            </tr>
            </tbody>
        </table>

        <table id="dos"  class="table table-striped ">
            <thead>
            <tr>
                <th style="background-color: #0F196C ; color: white;" scope="col">Fecha</th>
                <th style="background-color: #0F196C ; color: white;" scope="col">Materia</th>
                <th style="background-color: #0F196C ; color: white;" scope="col">Matricula</th>
                <th style="background-color: #0F196C ; " scope="col"></th>
            </tr>

            </thead>
            <tbody>
            <tr>
                <th scope="row">08/02/2022</th>
                <td>Redes</td>
                <td>20203tn078</td>
                <td>  <button type="button" class="btn btn-primary"  data-bs-toggle="modal" data-bs-target="#aplicacionesweb">Responder</button></td>
            </tr>
            <tr>
                <th scope="row">08/02/2022</th>
                <td>Redes</td>
                <td>20203tn078</td>
                <td>  <button type="button" class="btn btn-primary"  data-bs-toggle="modal" data-bs-target="#aplicacionesweb" >Responder</button></td>
            </tr>
            <tr>
                <th scope="row">08/02/2022</th>
                <td>Redes</td>
                <td>20203tn078</td>
                <td>  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#aplicacionesweb">Responder</button></td>
            </tr>
            </tbody>
        </table>

        <table  id="tres" class="table table-striped ">
            <thead>
            <tr>
                <th style="background-color: #0F196C ; color: white;" scope="col">Fecha</th>
                <th style="background-color: #0F196C ; color: white;" scope="col">Materia</th>
                <th style="background-color: #0F196C ; color: white;" scope="col">Matricula</th>
                <th style="background-color: #0F196C ; " scope="col"></th>
            </tr>

            </thead>
            <tbody>
            <tr>
                <th scope="row">08/02/2022</th>
                <td>web</td>
                <td>20203tn078</td>
                <td>  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#aplicacionesweb">Responder</button></td>
            </tr>
            <tr>
                <th scope="row">08/02/2022</th>
                <td>web</td>
                <td>20203tn078</td>
                <td>  <button type="button" class="btn btn-primary"  data-bs-toggle="modal" data-bs-target="#aplicacionesweb" >Responder</button></td>
            </tr>
            <tr>
                <th scope="row">08/02/2022</th>
                <td>web</td>
                <td>20203tn078</td>
                <td>  <button type="button" class="btn btn-primary"  data-bs-toggle="modal" data-bs-target="#aplicacionesweb">Responder</button></td>
            </tr>
            </tbody>
        </table>


        <table  id="cuatro" class="table table-striped ">
            <thead>
            <tr>
                <th style="background-color: #0F196C ; color: white;" scope="col">Fecha</th>
                <th style="background-color: #0F196C ; color: white;" scope="col">Materia</th>
                <th style="background-color: #0F196C ; color: white;" scope="col">Matricula</th>
                <th style="background-color: #0F196C ; " scope="col"></th>
            </tr>

            </thead>
            <tbody>
            <tr>
                <th scope="row">08/02/2022</th>
                <td>base de datos</td>
                <td>20203tn078</td>
                <td>  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#aplicacionesweb">Responder</button></td>
            </tr>
            <tr>
                <th scope="row">08/02/2022</th>
                <td>base de datos</td>
                <td>base de datos</td>
                <td>  <button type="button" class="btn btn-primary"  data-bs-toggle="modal" data-bs-target="#aplicacionesweb">Responder</button></td>
            </tr>
            <tr>
                <th scope="row">08/02/2022</th>
                <td>base de datos</td>
                <td>20203tn078</td>
                <td>  <button type="button" class="btn btn-primary"  data-bs-toggle="modal" data-bs-target="#aplicacionesweb">Responder</button></td>
            </tr>
            </tbody>
        </table>
    </div>
        <div class="modal fade " id="aplicacionesweb">
            <div class="modal-dialog modal-sg">
                <div class="modal-content">
                    <div class="modal-header ">

                    </div>
                    <button class="btn-close" data-bs-dismiss="modal" >

                    </button>

                    <div class="modal-body">
                        <h4 class="text text-center"  style="background-color: #0F196C; color: white;">Responder solicitud</h4>
                        <div class="d-grid gap-2 d-md-flex justify-content-md-center">
                            <button class="btn btn-success" data-bs-dismiss="modal">aceptar</button>
                            <button class="btn btn-danger"  data-bs-toggle="modal" data-bs-target="#motivo" >cancelar</button>
                        </div>
                    </div>
                </div>



                <div class="modal fade " id="motivo">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header ">

                            </div>
                            <button class="btn-close" data-bs-dismiss="modal" >

                            </button>

                            <div class="modal-body">
                                <h4 class="text text-center" >¿Cual es el motivo?</h4>
                                <form class="row g-3">
                                    <div class="col-md-12">
                                        <label for="inputEmail4" class="form-label" ></label>
                                        <input type="email" class="form-control" id="inputEmail4">
                                    </div>
                                    <button class="btn btn-primary justify-content-md-center" data-bs-dismiss="modal">enviar</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>




                <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

                <!-- Optional JavaScript; choose one of the two! -->

                <!-- Option 1: Bootstrap Bundle with Popper -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

                <!-- Option 2: Separate Popper and Bootstrap JS -->
                <!--
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
                -->

        </div>
        </div>
    </div>
</div>
</body>
</html>