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
  <div class="lesscontainer">
    <div class="container-fluid scont">
      <fieldset class="row tfiltro">
        <div class="col" ><p class="subtitles">Filtrar</p></div>
        <div class="col">
          <label for="all" class="subtitles">Todas</label>
          <input type="radio" id="all" name="filtrar" value="all"checked>
        </div>
        <div class="col">
          <label for="can" class="subtitles">Canceladas</label>
          <input type="radio" id="can" name="filtrar" value="canceladas">
        </div>
        <div class="col">
          <label for="imp" class="subtitles">Impartidas</label>
          <input type="radio" id="imp" name="filtrar" value="impartidas">
        </div>
        <div class="col">
          <label for="pen" class="subtitles">Pendientes</label>
          <input type="radio" id="pen" name="filtrar" value="pendientes">
        </div>
        <div class="col">
          <label for="rec" class="subtitles">Rechazadas</label>
          <input type="radio" id="rec" name="filtrar" value="rechazadas">
        </div>
        <div class="col">
          <label for="sol" class="subtitles">Solicitadas</label>
          <input type="radio" id="sol" name="filtrar" value="rechazadas">
        </div>
      </fieldset> 
      <div class="row theader">
        <div class="col"><p class="subtitles" style="color:white;">Fecha</p></div>
        <div class="col"><p class="subtitles" style="color:white;">Materia</p></div>
        <div class="col"><p class="subtitles" style="color:white;">Docente</p></div>
        <div class="col"></div>
      </div>
      <table>
        <tr>
        </tr>
      </table>   
      </div>
    </div>
  </div>


      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>