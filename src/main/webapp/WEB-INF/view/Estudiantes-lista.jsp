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
</head>
<body style="display: block;">
<jsp:include page="templates/import-styles.jsp"/>
<jsp:include page="templates/import-navbarAdmin.jsp"/>

<script>
  function showAll() {
    var x = document.getElementById("uno");
    var y=document.getElementById("dos");
    var z=document.getElementById("tres");
    x.style.display="block";
    y.style.display="none";
    z.style.display="none";
  }
  function showEna(){
    var x = document.getElementById("uno");
    var y=document.getElementById("dos");
    var z=document.getElementById("tres");
    x.style.display="none";
    y.style.display="block";
    z.style.display="none";
  }
  function showDis(){
    var x = document.getElementById("uno");
    var y=document.getElementById("dos");
    var z=document.getElementById("tres");
    x.style.display="none";
    y.style.display="none";
    z.style.display="block";
  }

</script>
<div class="lesscontainer" style="display: flex;">
  <div class="container-fluid scont">
    <form action="list-student" method="get">
      <div class="row">
        <button onclick="showAll()" type="button" class="filterbtn col-2" id="all">Todos</button>
        <button onclick="showEna()" type="button" class="filterbtn col-2" activos="activos">Activos</button>
        <button onclick="showDis()" type="button" class="filterbtn col-2" id="inactivos">Inactivos</button>
      </div>
      <div class="row theader" style="background-color:#033062; width: 100%;">
        <div class="col"><p class="subtitles" style="color:white;">Matricula</p></div>
        <div class="col-4"><p class="subtitles" style="color:white;">Nombre</p></div>
        <div class="col"><p class="subtitles" style="color:white;">Carrera</p></div>
        <div class="col"><p class="subtitles" style="color:white;"></div>
        <div class="col"></div>
      </div>
      <div id="tablas" class="row">
        <div id="uno">
          <!--
          <table>
            <c:forEach items="${list}" var="student">
              <tr>
                <td></td>
                <td></td>
                <td></td>
              </tr>
            </c:forEach>
          </table>-->
          <c:forEach items="${list}" var="student">
            <div class="row">
              <div class="col"><c:out value="${student.matricula}"/></div>
              <div class="col-4"><c:out value="${student.name}"/></div>
              <div class="col"><c:out value="${student.carrera}"/></div>
              <div class="col"></div>
              <div class="col">
                <c:if test="${student.estado=='Activo'}">
                  <a href="get-student?email=${student.email}" class="btn btnmod" style="width:100%;background-color:#009475;border: solid 1px #075948">
                    Activo
                  </a>
                </c:if>
                <c:if test="${student.estado=='Inactivo'}">
                  <a href="get-student?email=${student.email}" class="btn btn-danger btnmod" style="width:100%;background-color:#F74242;border: solid 1px darkred">
                    Inactivo
                  </a>
                </c:if>

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
              <a href="get-student?email=${aStudent.email}" class="btn btnmod" style="width:100%;background-color:#009475;border: solid 1px #075948">
                Activo
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
                <a href="get-student?email=${dstudent.email}" class="btn btn-danger btnmod" style="width:100%;background-color:#F74242;border: solid 1px darkred">
                  Inactivo
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