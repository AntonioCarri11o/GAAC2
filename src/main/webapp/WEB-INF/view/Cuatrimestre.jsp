<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cuatrimestres</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="stylesheet" href="styles.css">
    <script src="https://kit.fontawesome.com/18b617c855.js" crossorigin="anonymous"></script>
</head>
<body style="display:block;">
<jsp:include page="templates/import-navbarAdmin.jsp"/>
<jsp:include page="templates/import-styles.jsp"/>
      <div class="lesscontainer">
        <div class="container-fluid scont" style="padding:0;">
            <div class="row row-cols-9">
                <c:if test="${param['message']=='error'}">
                    <div class="alert alert-warning">
                        Ha ocurrido un error!
                    </div>
                </c:if>
                <c:forEach items="${list}" var="cuatrimestre">
                    <div class="col-3">
                        <div class="titles">
                            <c:out value="${cuatrimestre.periodo}"/>
                            <c:out value="${cuatrimestre.year}"/>
                        </div>
                        <p class="subtitles">Mujeres Atendidas: <c:out value="${cuatrimestre.mujeres}"/></p>
                        <p class="subtitles">Hombres Atendidos: <c:out value="${cuatrimestre.hombres}"/></p>
                        <p class="subtitles">Otros Atendidos: <c:out value="${cuatrimestre.otros}"/></p>
                        <form action="statusCuatrimestre" method="get">
                            <input hidden name="status" value="${cuatrimestre.estado}">
                            <input hidden name="id" value="${cuatrimestre.idC}">
                            <button class="btn btn-primary" type="submit">
                                <c:out value="${cuatrimestre.estado}"/>
                            </button>
                        </form>

                    </div>
                </c:forEach>
            </div>
        </div>
          <a href="newCuatrimestre"
             class="btn btn-primary new "><i class="fa-solid fa-plus fa-2xl"></i></a>
      </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>