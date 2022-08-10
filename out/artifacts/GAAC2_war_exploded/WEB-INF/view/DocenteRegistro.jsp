<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <title>Docente: Registro</title>
    
</head>
<body>
<jsp:include page="templates/import-styles.jsp"/>
    <div class="fullcontainer">

        <div class="container-fluid height100">

            <div class="row row-cols-12 justify-content-end height100">
                <div class="col-md-8 col-sm-2 height100"></div>

                <form action="newDocente"method="post" class="col-md-4 col-sm-6 container-right height100">
                        <div class="row crhead">
                            <div class="col"><p class="subtitles">Registro docente</p></div>
                            <div class="col" style="text-align:right;"><a href="#">Iniciar sesión</a></div>
                        </div>
                        <div class="row crbody">
                            <p class="subtitles">Nombre</p>
                            <input type="text" class="form-control" name="name">
                            <p class="subtitles">Apellido paterno</p>
                            <input type="text" class="form-control" name="ap1">
                            <p class="subtitles">Apellido materno</p>
                            <input type="text" class="form-control" name="ap2">
                            <p class="subtitles">Correo</p>
                            <input type="text" class="form-control" name="email">
                            <p class="subtitles">Contraseña</p>
                            <input type="text" class="form-control" name="password">
                            <p class="subtitles">Comfirmar contraseña</p>
                            <input type="text" class="form-control">
                        </div>
                        <div class="row crfoot">
                            <div class="col"><button class="btn" type="submit">Registrar</button></div>
                            <div class="col" style="text-align:right;"><a href="index" class="btn btn-primary">Cancelar</a> </div>
                        </div>
                    </div>
                </form>


            </div>
        </div></div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    </body>
  </html>
</body>
</html>
