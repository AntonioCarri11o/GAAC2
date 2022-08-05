<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Actualizar Persona</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>
<jsp:include page="templates/import-styles.jsp"/>
<jsp:include page="templates/import-navbarAdmin.jsp"/>
<div class="container scont">
    <div class="row justify-content-center">
        <div class="col-4">
            <form action="status-student" method="get">
                <div class="mb-3">
                    <p class="subtitles">Estado</p>
                    <input hidden value="${studentx.matricula}" name="matricula">
                    <select class="form-select" id="validationDefault04" required name="status">
                        <option hidden selected value="${studentx.estado}"><c:out value="${studentx.estado}"/></option>
                        <option value="Activo">Activo</option>
                        <option value="Inactivo">Inactivo</option>
                    </select>
                </div>
                <button class="btn btn-primary" type="submit">Actualizar</button>
                <button class="btn btn-danger" type="reset">Cancelar</button>
            </form>
            <br>
            <a href="list-persons">Regresar</a>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>