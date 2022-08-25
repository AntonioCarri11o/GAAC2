<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Asesorías</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/18b617c855.js" crossorigin="anonymous"></script>  
</head>
<body style="display:block;">
<jsp:include page="templates/import-navbarDocente.jsp"/>
<jsp:include page="templates/import-styles.jsp"/>
<script>
  function showAll() {
    var a = document.getElementById("uno");
    var b = document.getElementById("dos");
    var c = document.getElementById("tres");
    var d = document.getElementById("cuatro");
    var e = document.getElementById("cinco");
    var f = document.getElementById("seis");
    a.style.display="block";
    b.style.display="none";
    c.style.display="none";
    d.style.display="none";
    e.style.display="none";
    f.style.display="none";

  }

  function showCan(){
    var a = document.getElementById("uno");
    var b = document.getElementById("dos");
    var c = document.getElementById("tres");
    var d = document.getElementById("cuatro");
    var e = document.getElementById("cinco");
    var f = document.getElementById("seis");
    a.style.display="none";
    b.style.display="block";
    c.style.display="none";
    d.style.display="none";
    e.style.display="none";
    f.style.display="none";
  }
  function showImp(){
    var a = document.getElementById("uno");
    var b = document.getElementById("dos");
    var c = document.getElementById("tres");
    var d = document.getElementById("cuatro");
    var e = document.getElementById("cinco");
    var f = document.getElementById("seis");
    a.style.display="none";
    b.style.display="none";
    c.style.display="block";
    d.style.display="none";
    e.style.display="none";
    f.style.display="none";
  }
  function showPen(){
    var a = document.getElementById("uno");
    var b = document.getElementById("dos");
    var c = document.getElementById("tres");
    var d = document.getElementById("cuatro");
    var e = document.getElementById("cinco");
    var f = document.getElementById("seis");
    a.style.display="none";
    b.style.display="none";
    c.style.display="none";
    d.style.display="block";
    e.style.display="none";
    f.style.display="none";
  }
  function showRech(){
    var a = document.getElementById("uno");
    var b = document.getElementById("dos");
    var c = document.getElementById("tres");
    var d = document.getElementById("cuatro");
    var e = document.getElementById("cinco");
    var f = document.getElementById("seis");
    a.style.display="none";
    b.style.display="none";
    c.style.display="none";
    d.style.display="none";
    e.style.display="block";
    f.style.display="none";
  }
  function showSol(){
    var a = document.getElementById("uno");
    var b = document.getElementById("dos");
    var c = document.getElementById("tres");
    var d = document.getElementById("cuatro");
    var e = document.getElementById("cinco");
    var f = document.getElementById("seis");
    a.style.display="none";
    b.style.display="none";
    c.style.display="none";
    d.style.display="none";
    e.style.display="none";
    f.style.display="block";
  }

</script>
<div class="lesscontainer">
  <div class="container-fluid scont">
    <div class="row">
      <button onclick="showAll()" type="button" class="filterbtn col-2" >Todas</button>
      <button onclick="showCan()" type="button" class="filterbtn col-2" >Canceladas</button>
      <button onclick="showImp()" type="button" class="filterbtn col-2" >Impartidas</button>
      <button onclick="showPen()" type="button" class="filterbtn col-2" >Pendientes</button>
      <button onclick="showRech()"type="button" class="filterbtn col-2" >Rechazadas</button>
      <button onclick="showSol()" type="button" class="filterbtn col-2" >Solicitadas</button>
    </div>
    <div class="row theader">
      <div class="col"><p class="subtitles" style="color:white;">Fecha</p></div>
      <div class="col"><p class="subtitles" style="color:white;">Materia</p></div>
      <div class="col"><p class="subtitles" style="color:white;">Alumno</p></div>
      <div class="col"><p class="subtitles" style="color:white;">Correo</p></div>
      <div class="col"></div>
    </div>
    <div id="uno">
      <c:forEach items="${list}" var="sesion">
        <div class="row">
          <div class="col"><c:out value="${sesion.date}"/></div>
          <div class="col"><c:out value="${sesion.nameMateria}"/></div>
          <div class="col"><c:out value="${sesion.nameStudent}"/></div>
          <div class="col"><c:out value="${sesion.emailStudent}"/></div>
          <div class="col row">
            <c:if test="${sesion.estado=='cancelada'}">
              <div class="col"><button type="button" disabled class="btn btnmod" style="width:100%;color:white;background-color: red; border: solid 1px darkred">Cancelada</button></div>
              <div class="col"><a href="motivo?id=${sesion.id}&estado=${sesion.estado}" class="btn"><i class="fa-regular fa-circle-question fa-2xl"></i></a></div>
            </c:if>
            <c:if test="${sesion.estado=='impartida'}">
              <button type="button" disabled class="btn btnmod" style="width:100%;color:white;background-color: #0F54A0; border: solid 1px #011A42">Impartida</button>
            </c:if>
            <c:if test="${sesion.estado=='pendiente'}">
              <a href="cancelAdvisory?id=${sesion.id}" class="btn btnmod" style="width:100%;background-color:darkred;border: solid 1px red">
                Cancelar
              </a>
            </c:if>
            <c:if test="${sesion.estado=='rechazada'}">
              <div class="col"><button type="button" disabled class="btn btnmod" style="width:100%;color:white;background-color: red; border: solid 1px darkred">Rechazada</button></div>
              <div class="col"><a href="motivo?id=${sesion.id}&estado=${sesion.estado}" class="btn"><i class="fa-regular fa-circle-question fa-2xl"></i></a></div>
            </c:if>
            <c:if test="${sesion.estado=='solicitada'}">
              <div class="col">
                <a href="aceptAdvisory?id=${sesion.id}" class="btn" style="width:100%;background-color:#075948;border: solid 1px #009475">Aceptar</a>
              </div>
              <div class="col">
                <a href="rejectAdvisory?id=${sesion.id}" class="btn" style="width:100%;background-color:darkred;border: solid 1px red">Rechazar</a>
              </div>
            </c:if>

          </div>


        </div>
      </c:forEach>
    </div>
    <div id="dos">
      <c:forEach items="${canList}" var="sesionC">
        <div class="row">
          <div class="col"><c:out value="${sesionC.date}"/></div>
          <div class="col"><c:out value="${sesionC.nameMateria}"/></div>
          <div class="col"><c:out value="${sesionC.nameStudent}"/></div>
          <div class="col"><c:out value="${sesionC.emailStudent}"/></div>
          <div class="col row">
            <div class="col"><button type="button" disabled class="btn btnmod" style="width:100%;color:white;background-color: red; border: solid 1px darkred">Cancelada</button></div>
            <div class="col"><a href="motivo?id=${sesionC.id}&estado=${sesion.estado}" class="btn"><i class="fa-regular fa-circle-question fa-2xl"></i></a></div>
          </div>

        </div>
      </c:forEach>
    </div>
    <div id="tres">
      <c:forEach items="${impList}" var="sesionI">
        <div class="row">
          <div class="col"><c:out value="${sesionI.date}"/></div>
          <div class="col"><c:out value="${sesionI.nameMateria}"/></div>
          <div class="col"><c:out value="${sesionI.nameStudent}"/></div>
          <div class="col"><c:out value="${sesionI.emailStudent}"/></div>
          <div class="col">
            <button type="button" disabled class="btn btnmod" style="width:100%;color:white;background-color: #0F54A0; border: solid 1px #011A42">Impartida</button>
          </div>
        </div>
      </c:forEach>
    </div>
    <div id="cuatro">
      <c:forEach items="${penList}" var="sesionP">
        <div class="row">
          <div class="col"><c:out value="${sesionP.date}"/></div>
          <div class="col"><c:out value="${sesionP.nameMateria}"/></div>
          <div class="col"><c:out value="${sesionP.nameStudent}"/></div>
          <div class="col"><c:out value="${sesionP.emailStudent}"/></div>
          <div class="col">
            <a href="cancelAdvisory?id=${sesionP.id}" class="btn btnmod" style="width:100%;background-color:darkred;border: solid 1px red">
              Cancelar
            </a>
          </div>
        </div>
      </c:forEach>
    </div>
    <div id="cinco">
      <c:forEach items="${rechList}" var="sesionR">
        <div class="row">
          <div class="col"><c:out value="${sesionR.date}"/></div>
          <div class="col"><c:out value="${sesionR.nameMateria}"/></div>
          <div class="col"><c:out value="${sesionR.nameStudent}"/></div>
          <div class="col"><c:out value="${sesionR.emailStudent}"/></div>
          <div class="col row">
            <div class="col"><button type="button" disabled class="btn btnmod" style="width:100%;color:white;background-color: red; border: solid 1px darkred">Rechazada</button></div>
            <div class="col"><a href="motivo?id=${sesionR.id}&estado=${sesion.estado}" class="btn"><i class="fa-regular fa-circle-question fa-2xl"></i></a></div>
          </div>
        </div>
      </c:forEach>
    </div>
    <div id="seis">
      <c:forEach items="${solList}" var="sesionS">
        <div class="row">
          <div class="col"><c:out value="${sesionS.date}"/></div>
          <div class="col"><c:out value="${sesionS.nameMateria}"/></div>
          <div class="col"><c:out value="${sesionS.nameStudent}"/></div>
          <div class="col"><c:out value="${sesionS.emailStudent}"/></div>
          <div class="col">
            <div class="col">
              <a href="aceptAdvisory?id=${sesionS.id}" class="btn" style="width:100%;background-color:#075948;border: solid 1px #009475">Aceptar</a>
            </div>
            <div class="col">
              <a href="rejectAdvisory?id=${sesionS.id}" class="btn" style="width:100%;background-color:darkred;border: solid 1px red">Rechazar</a>
            </div>
          </div>
        </div>
      </c:forEach>
    </div>
    <c:if test="${param['message']=='toManyAdv'}">
      <div class="alert alert-danger">
        Solo puedes tener 3 asesorías solicitadas / pendientes a la vez
      </div>
    </c:if>
    <div></div>
  </div>
</div>

      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>