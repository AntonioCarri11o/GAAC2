<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Materias</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/18b617c855.js" crossorigin="anonymous"></script>
</head>
<body style="display:block;">
<jsp:include page="templates/import-navbarDocente.jsp"/>
<jsp:include page="templates/import-styles.jsp"/>
<div class="lesscontainer">
    <div class="container-fluid scont">

        <c:forEach items="${list}" var="materia">
            <div class="row">
                <div class="col-3">
                    <c:out value="${materia.name}"/>
                    <form>
                        <input hidden name="id" value="${materia.id}">
                        <input hidden name="status" value="${materia.estado}">
                        <button class="btn btn-primary" type="submit">
                            <c:out value="${materia.estado}"/>
                        </button>
                    </form>
                </div>
            </div>
        </c:forEach>
        <a href="carreras"
           class="btn btn-primary new "><i class="fa-solid fa-plus fa-2xl"></i></a>

    </div>
</div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>