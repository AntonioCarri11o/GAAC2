<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">    
    <title>Administrador: Iniciar sesión</title>

</head>

<body style="height: auto;">
    <form action="loginDA" method="post" class="card container-md">
        <div class="cbody">
            <p class="titles" style="text-align:center;">Administrador</p>
            <p class="titles">Usuario</p>
        <input type="text" class="form-control" name="email">
        <p class="titles">Código</p>
        <input type="text" class="form-control" name="password">
            <input type="text" hidden name="role" value="3">
            <c:if test="${param['message']=='error'}">
                <div class="alert alert-warning">
                    Usuario y/o contraseña incorrecta
                </div>
            </c:if>
        </div>

    <div class="row row-cols-12 cfoot">
        <button class="btn" type="submit">Iniciar sesión</button>
        <div class=" col-8">
            <img src="/img/Datic.png" class="logosI" style="margin-top: .5em;" alt="">
        </div>
        <div class="col-4 " style="text-align:right;">
            <img src="/img/Logo-utez.png" class="logosI" style="height:auto;" alt="">
        </div>

    </div></form>




</body>
</html>