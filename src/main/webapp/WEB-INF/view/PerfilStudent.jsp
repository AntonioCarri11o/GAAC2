<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi perfil</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/18b617c855.js" crossorigin="anonymous"></script>
</head>
<body>
   <jsp:include page="templates/import-navbarStudent.jsp"/>
   <jsp:include page="templates/import-styles.jsp"/>
      <div class="lesscontainer">
        <div class="container-fluid scont">
            <form action="updateStudent" method="post" style="margin: 3em 2em 2em 0;">
                <div class="row">
                    <div class="col">
                        <img src="/img/imagen.jpg" style="width:10em;" alt="">
                    </div>
                    <div class="col-10" >
                        <div class="row" style="border: solid 1px;">
                            <div class="col" style="display: flex;">
                                <div style="margin: auto 0 auto 0"><p class="subtitles">Nombre(s)</p>
                                </div>
                            </div>
                            <input type="text" class="col-10" value="${name}" name="name">
                        </div>
                        <div class="row" style="border: solid 1px;">
                            <div class="col" style="display: flex;">
                                <div style="margin: auto 0 auto 0"><p class="subtitles">Matrícula</p>
                                </div>
                            </div>
                            <input type="text" class="col-10" disabled value="${matricula}">
                        </div>
                        <div class="row" style="border: solid 1px;">
                            <div class="col-2" style="display: flex;">
                                <div style="margin: auto 0 auto 0"><p class="subtitles">Carrera</p>
                                </div>
                            </div>
                            <div class="col-4">
                                <select class="form-select" id="validationDefault03" name="carrera" required>
                                    <option class="subtitles" hidden selected value="${idCarrera}"><c:out value="${nameCarrera}"/></option>
                                    <option value="dsm">Desarrollo de Software Multiplataforma</option>
                                    <option value="dmi">Diseño y Moda Industrial</option>
                                    <option value="dd">Diseño Digital</option>
                                    <option value="ird">Infraestructura de Redes Digitales</option>
                                </select>
                            </div>
                        </div>
                        <div class="row" style="border: solid 1px;">
                            <div class="col" style="display: flex;">
                                <div style="margin: auto 0 auto 0"><p class="subtitles">Correo</p>
                                </div>
                            </div>
                            <input class="col-10" type="text" disabled value="${email}">
                        </div>
                        <div class="row" style="border: solid 1px;">
                            <div class="col" style="display: flex;">
                                <div style="margin: auto 0 auto 0"><p class="subtitles">Teléfono</p>
                                </div>
                            </div>
                            <input type="text" class="col-10" value="${telefono}" name="tel">
                        </div>
                        <div class="row" style="border: solid 1px;">
                            <div class="col-2" style="display: flex;">
                                <div style="margin: auto 0 auto 0"><p class="subtitles">Sexo</p>
                                </div>
                            </div>
                            <div class="col-4">
                                <select class="form-select" id="validationDefault04" required name="sexo">
                                    <option hidden selected class="subtitles" value="${sexo}"><c:out value="${sexo}"/></option>
                                    <option value="H">Hombre</option>
                                    <option value="M">Mujer</option>
                                    <option value="O">Otro</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" style="margin:1em 0 0 0;">
                    <div class="col"></div>
                    <c:if test="${param['message']=='error'}">
                        <div class="alert alert-danger">
                            Algo ha salido mal :c
                            <p>vuelve a intentarlo más tarde</p>
                        </div>
                    </c:if>
                    <div class="col-10"><button class="btn" type="submit">Modificar Datos</button></div>
                </div>
            </form>

        </div>
      </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>