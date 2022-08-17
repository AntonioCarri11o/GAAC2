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
<jsp:include page="templates/import-navbarStudent.jsp"/>
<jsp:include page="templates/import-styles.jsp"/>
<script>
  function showAll() {
    var a=document.getElementById("uno");
    var b=document.getElementById("dos");
    var c=document.getElementById("tres");
    var d=document.getElementById("cuatro");
    var e=document.getElementById("cinco");
    var f=document.getElementById("seis");
    a.style.display="block";
    b.style.display="none";
    c.style.display="none";
    d.style.display="none";
    e.style.display="none";
    f.style.display="none";
  }
  function showCan() {
    var a=document.getElementById("uno");
    var b=document.getElementById("dos");
    var c=document.getElementById("tres");
    var d=document.getElementById("cuatro");
    var e=document.getElementById("cinco");
    var f=document.getElementById("seis");
    a.style.display="none";
    b.style.display="block";
    c.style.display="none";
    d.style.display="none";
    e.style.display="none";
    f.style.display="none";
  }
  function showImp() {
    var a=document.getElementById("uno");
    var b=document.getElementById("dos");
    var c=document.getElementById("tres");
    var d=document.getElementById("cuatro");
    var e=document.getElementById("cinco");
    var f=document.getElementById("seis");
    a.style.display="none";
    b.style.display="none";
    c.style.display="block";
    d.style.display="none";
    e.style.display="none";
    f.style.display="none";
  }
  function showPen() {
    var a=document.getElementById("uno");
    var b=document.getElementById("dos");
    var c=document.getElementById("tres");
    var d=document.getElementById("cuatro");
    var e=document.getElementById("cinco");
    var f=document.getElementById("seis");
    a.style.display="none";
    b.style.display="none";
    c.style.display="none";
    d.style.display="blok";
    e.style.display="none";
    f.style.display="none";
  }
  function showRech() {
    var a=document.getElementById("uno");
    var b=document.getElementById("dos");
    var c=document.getElementById("tres");
    var d=document.getElementById("cuatro");
    var e=document.getElementById("cinco");
    var f=document.getElementById("seis");
    a.style.display="none";
    b.style.display="none";
    c.style.display="none";
    d.style.display="none";
    e.style.display="block";
    f.style.display="none";
  }
  function showSol() {
    var a=document.getElementById("uno");
    var b=document.getElementById("dos");
    var c=document.getElementById("tres");
    var d=document.getElementById("cuatro");
    var e=document.getElementById("cinco");
    var f=document.getElementById("seis");
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
        <button onclick="showAll()" type="button" class="filterbtn col-2" id="all">Todas</button>
        <button onclick="showCan()" type="button" class="filterbtn col-2" activos="can">Canceladas</button>
        <button onclick="showImp()" type="button" class="filterbtn col-2" id="imp">Impartidas</button>
        <button onclick="showPen()" type="button" class="filterbtn col-2" id="pen">Pendientes</button>
        <button onclick="showRech()" type="button" class="filterbtn col-2" activos="rech">Rechazadas</button>
        <button onclick="showSol()" type="button" class="filterbtn col-2" id="sol">Solicitadas</button>
      </div>
      <div class="row theader">
        <div class="col"><p class="subtitles" style="color:white;">Fecha</p></div>
        <div class="col"><p class="subtitles" style="color:white;">Materia</p></div>
        <div class="col"><p class="subtitles" style="color:white;">Docente</p></div>
        <div class="col"></div>
      </div>
        <c:forEach items="${list}" var="sesion">
            <div class="row" id="uno">
                <div class="col"><c:out value="${sesion.date}"/></div>
                <div class="col"><c:out value="${sesion.nameMateria}"/></div>
                <div class="col"><c:out value="${sesion.nameTeacher}"/></div>
            </div>
        </c:forEach>
        <div></div>
      </div>
    </div>
<a href="listMaterias"
   class="btn btn-primary new "><i class="fa-solid fa-plus fa-2xl"></i></a>
  </div>


      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>