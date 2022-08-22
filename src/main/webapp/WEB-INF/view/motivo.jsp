<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Cancelar Asesoría</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/18b617c855.js" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="templates/import-navbarStudent.jsp"/>
<jsp:include page="templates/import-styles.jsp"/>
<div class="lesscontainer">
    <div class="container-fluid scont">
        <form class="card" action="comfirmCancel" method="post">

            <p class="titles">¿Cancelar asesoría?</p>
            <input type="text" hidden name="id" value="${id}">
            <textarea name="motivo" rows="5" cols="50" placeholder="Escribe el motivo" required></textarea>
            <c:if test="${param['message']=='reasonMissing'}">
                <div class="alert alert-danger">
                    Debes especificar un motivo de cancelación
                </div>
            </c:if>
            <div class="row">
                <div class="col"><button class="btn" type="submit">Aceptar</button></div>
                <c:if test="${role==1}">
                    <div class="col"><a class="btn" href="AsesoriasE">Cancelar</a></div>
                </c:if>
                <c:if test="${role==2}">
                    <div class="col"><a class="btn" href="AsesoriasD">Cancelar</a></div>
                </c:if>
            </div>
        </form>

    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>
