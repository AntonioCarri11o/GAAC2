<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Estudiantes: Registro</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
    <div class="fullcontainer">

        <div class="container-fluid height100">

            <div class="row height100">
                <div class="col-8">
                    <div class="row">
                        <div class="col" style=" padding:0 0 0 0;">
                        <img src="img/Datic.png" class="logosR" alt=""></div>
                        <div class="col" style="text-align:center; color: white;"><h1>GAAC</h1></div>
                        <div class="col" style=" padding:0 0 0 0; text-align: right;">
                            <img src="img/Logo-utez.png" class="logosR" alt="">
                        </div>
                    </div>
                </div>
                <form action="save-student" method="post" class="col-4 container-right height100">
                        <div class="row crhead">
                            <div class="col"><p class="subtitles">Registro Estudiante</p></div>
                            <div class="col" style="text-align:right;"><a href="#">Iniciar sesión</a></div>
                        </div>
                        <div class="row crbody">
                            <div class="datos">
                                <label for="controlName" class="form-label subtitles">Nombre completo</label>
                                <input type="text" class="form-control" id="controlName" name="name">
                                <label for="controlEmail" class="form-label subtitles">Correo Institucional</label>
                                <input type="text" class="form-control" id="controlEmail" name="email">
                                <label for="controlTNum" class="form-label subtitles">Teléfono</label>
                                <input type="text" class="form-control" id="controlTNum" name="tNum">
                                <label for="validationDefault04" class="form-label">Sexo</label>
                                <select class="form-select" id="validationDefault04" required name="sexo">
                                    <option hidden selected class="subtitles" value=null>Selecciona una opción</option>
                                    <option value="H">Hombre</option>
                                    <option value="M">Mujer</option>
                                    <option value="O">Otro</option>
                                </select>
                                <label for="validationDefault03" class="form-label">Carrea</label>
                                <select class="form-select" id="validationDefault03" name="carrera" required>
                                    <option class="subtitles" hidden selected value=null>Selecciona una opción</option>
                                    <option value="01">Desarrollo de software multiplataforma</option>
                                    <option value="02">Diseño y moda industrial</option>
                                    <option value="03">Diseño digital</option>
                                    <option value="04">Infraestructura de redes</option>
                                </select>
                                <p class="subtitles">Contraseña</p>
                                <input type="text" class="form-control" name="password">
                                <!--
                                <p class="subtitles">Comfirmar contraseña</p>
                                <input type="text" class="form-control">-->
                            </div>

                        </div>
                        <div class="row crfoot">
                            <div class="col"><button class="btn" type="submit">Registrar</button></div>
                            <div class="col" style="text-align:right;"><button class="btn" type="reset">Cancelar</button></div>
                        </div>
                    </div>
                </form>


            </div>
        </div>
    </div>

</body>
</html>