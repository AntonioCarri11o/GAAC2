
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carreras</title>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

    <script src="https://kit.fontawesome.com/18b617c855.js" crossorigin="anonymous"></script>
</head>

<body style="display:block;">
<jsp:include page="templates/import-styles.jsp"/>
<jsp:include page="templates/import-navbarDocente.jsp"/>
<div class="lesscontainer">
    <div class="midcontainer container-fluid">
        <div class="row rcarrera">
            <form action="newMateriaD" method="get">
                <input hidden name="carrera" value="dsm">
                <button type="submit" class="ccarrera col btn"><p style="margin: auto;">Desarrollo de software multiplataforma</p></button>
            </form>
            <form action="newMateriaD" method="get">
                <input hidden name="carrera" value="dd">
                <button type="submit" class="ccarrera col btn"><p style="margin: auto;">Diseño digital</p></button>
            </form>


        </div>
        <div class="row rcarrera">

            <form action="newMateriaD" method="get">
                <input hidden name="carrera" value="dmi">
                <button type="submit" class="ccarrera col btn"><p style="margin: auto;">Diseño y moda industrial</p></button>
            </form>

            <form action="newMateriaD" method="get">
                <input hidden name="carrera" value="ird">
                <button type="submit" class="ccarrera col btn"><p style="margin: auto;">Infraestrucutra de redes digitales</p></button>
            </form>



        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>