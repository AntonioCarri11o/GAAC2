<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi perfil</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/18b617c855.js" crossorigin="anonymous"></script>
        <style>
        body{background-image:url(/src/main/img/fachadaUTEZBN.jpg); }
         </style>
</head>
<body>
<jsp:include page="templates/import-navbarDocente.jsp"/>
      <div class="lesscontainer">
        <div class="container-fluid perfili">
            <form action="perfilDocenteUpdate" method="post" style="margin: 3em 2em 2em 0;;">
                <div style="margin-left: 2em;">
                    <div class="row">
                        <img src="/img/imagen.jpg" style="width:8em;">
                    </div>
                    <!-- Cuerpo dividido -->
                    <div>
                        <div class="row" style="border: solid 1px;">
                            <div class="col-4" style="display: flex;">
                                <div style="margin: auto 0 auto 0"><p class="subtitles">Nombre</p>
                                </div>
                            </div>
                            <input type="text" class="col" name="name" value="${name}">
                        </div>
                        <div class="row" style="border: solid 1px;">
                            <div class="col-4" style="display: flex;">
                                <div style="margin: auto 0 auto 0"><p class="subtitles">Apellido Paterno</p>
                                </div>
                            </div>
                            <input type="text" class="col" name="ap1" value="${ap1}">
                        </div>
                        <div class="row" style="border: solid 1px;">
                            <div class="col-4" style="display: flex;">
                                <div style="margin: auto 0 auto 0"><p class="subtitles">Apellido Materno</p>
                                </div>
                            </div>
                            <input type="text" class="col" name="ap2" value="${ap2}">
                        </div>
                        <div class="row" style="border: solid 1px;">
                            <div class="col-4" style="display: flex;">
                                <div style="margin: auto 0 auto 0"><p class="subtitles">Correo</p>
                                </div>
                            </div>
                            <input type="text" class="col" disabled value="${email}">
                        </div>
                    </div>

                    <div class="row" style="margin:1em 0 0 0;">
                        <div class="col-10"><button class="btn btn-primary" type="submit">Modificar Datos</button></div>
                    </div>
                </div>

            </form>

        </div>
      </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>