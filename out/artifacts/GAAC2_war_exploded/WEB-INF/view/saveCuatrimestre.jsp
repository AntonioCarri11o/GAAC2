<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Nuevo cuatrimestre</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/18b617c855.js" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="templates/import-navbarAdmin.jsp"/>
<jsp:include page="templates/import-styles.jsp"/>
    <div class="container scont">
        <div class="row justify-content-center">
            <div class="col-4">
                <form action="saveCuatrimestre" method="get">
                    <div class="mb-3">
                        <p class="titles">
                            Nuevo cuatrimestre
                        </p>
                        <p class="subtitles">Periodo</p>
                        <select class="form-select" id="validationDefault04" required name="periodo">
                            <option hidden selected value=null>Selecciona una opción</option>
                            <option value="Ene-Abr">Enero-Abril</option>
                            <option value="May-Ago">Mayo-Agosto</option>
                            <option value="Sep-Dic">Septiembre-Diceiembre</option>
                        </select>
                        <p class="subtitles">Año</p>
                        <input type="number" name="year">
                    </div>
                    <button class="btn btn-primary" type="submit">Registrar</button>
                    <a href="list-cuatrimestre" class="btn btn-primary">Cancelar</a>
                </form>
                <br>
            </div>
        </div>
    </div><
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>
