<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<div class="container-md card" style="height: 50%;">
    <div class="cbody">
        <p class="titles" style="text-align:center;">GAAC</p>
        <p class="subtitles">Bienvenido</p>
        <div class="d-grid gap-2 bottombtn">

            <br>
            <p class="subtitles">Registrarse como:</p>
            <div class="row">
                <div class="col"><a href="EstudiantesRegistro" class="btn btn-primary width100" >Estudiante</a></div>
                <div class="col"><a href="DocenteRegistro" class="btn btn-primary width100" >Docente</a></div>
            </div>
            <a href="AdminInicioSesion" class="btn btn-primary">Admin</a>
            <a href="login" class="btn btn-primary">Iniciar sesión</a>
            <a href="pruebas">Pruebas</a>

        </div>
    </div>
    <div class="cfoot">
        <div class="row">
            <div class="col" style="display:flex;"><img style="margin:auto 0 0 0;" src="/img/Datic.png" class="logosR" alt=""></div>
            <div class="col" style="text-align:right;"><img src="/img/Logo-utez.png" class="logosI" alt=""></div>
        </div>
    </div>
</div>
</body>
</html>
