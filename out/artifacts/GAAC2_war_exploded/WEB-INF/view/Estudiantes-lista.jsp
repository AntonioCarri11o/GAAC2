<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Estudiantes</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
  <script src="https://kit.fontawesome.com/18b617c855.js" crossorigin="anonymous"></script>
  <link href="styles.css" type="text/css" rel="stylesheet">
</head>
<body style="display: block;">
<jsp:include page="templates/import-styles.jsp"/>
<jsp:include page="templates/import-navbarAdmin.jsp"/>

<div class="lesscontainer" style="display: flex;">
  <div class="container-fluid scont">
    <form action="list-student" method="get">

          <label for="all" class="subtitles">Todos</label>
          <input type="radio" id="all" name="filtrar" value="all"checked>
          <label for="act" class="subtitles">Activos</label>
          <input type="radio" id="act" name="filtrar" value="Activo">
          <label for="ina" class="subtitles">Inactivos</label>
          <input type="radio" id="ina" name="filtrar" value="Inactivo">
      <div class="row theader" style="background-color:#033062;">
        <div class="col"><p class="subtitles" style="color:white;">Matricula</p></div>
        <div class="col-4"><p class="subtitles" style="color:white;">Nombre</p></div>
        <div class="col"><p class="subtitles" style="color:white;">Carrera</p></div>
        <div class="col"><p class="subtitles" style="color:white;"></div>
        <div class="col"></div>
      </div>
      <div id="tablas">
        <div id="uno">
          <c:forEach items="${list}" var="student">
            <div class="row">
              <div class="col"><c:out value="${student.matricula}"/></div>
              <div class="col-4"><c:out value="${student.name}"/></div>
              <div class="col"><c:out value="${student.carrera}"/></div>
              <div class="col"></div>
              <div class="col">
                <a href="get-student?matricula=${student.matricula}" class="btn btnmod" style="width:100%;">
                  <c:out value="${student.estado}"/>

                </a>
              </div>
            </div>
          </c:forEach>
        </div>
        <div id="dos">
          <c:forEach items="${whiteList}" var="aStudent">
          <div class="row">
            <div class="col"> <c:out value="${aStudent.matricula}"/></div>
            <div class="col-4"> <c:out value="${aStudent.name}"/></div>
            <div class="col"> <c:out value="${aStudent.carrera}"/></div>
            <div class="col"></div>
            <div class="col">
              <a href="get-student?matricula=${aStudent.matricula}" class="btn btnmod" style="width:100%;">
                <c:out value="${aStudent.estado}"/>
              </a>
            </div>
          </div>
          </c:forEach>
        </div>
        <div id="tres">
          <c:forEach items="${dSList}" var="dstudent">
            <div class="row">
              <div class="col"><c:out value="${dstudent.matricula}"/></div>
              <div class="col-4"><c:out value="${dstudent.name}"/></div>
              <div class="col"><c:out value="${dstudent.carrera}"/></div>
              <div class="col"></div>
              <div class="col">

                <a href="get-student?matricula=${dstudent.matricula}" class="btn btnmod" style="width:100%;">
                  <c:out value="${dstudent.estado}"/>
                </a>
              </div>
            </div>
          </c:forEach>
        </div>
      </div>

    </form>

  </div>

</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>