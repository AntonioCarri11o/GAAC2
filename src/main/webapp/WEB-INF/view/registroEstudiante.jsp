<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Registro Estudiante</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  <style>
    body{
      margin: 0;
      height: 100%;
      display: flex;
      flex-direction: column;
    }
    /* quitar subrayado del link */
    div .link_RegistroD{text-decoration: none; font-size: 18px;
      color:white;}
    div .link_SingUpD{text-decoration: none; font-size:18px; color: white;}
    form{padding-top:2rem ;}
    div .container{
      margin: 0%;
    }
    div #BKimagen{
      height: 100%;
      /*background-image:url();*/
      background-size: cover}

    div #formularioDerecha{background-color: #033062 ;height: 100%;}
    form{margin-left:2rem; margin-right: 2rem;}
    div .card{ background-color:  white; }
  </style>
</head>
<body>
<div class="container-fluid height100">
  <div class="row height100" id="BKimagen">
    <div class="col-7 height100">
      <div class="row text-center" style="padding-top: 0.5rem; background-color: white;height: 6em;" >
        <div class="col-6 col-md-4"><img src="/img/logoUTEZ.png" style="float: left;width: 150px;height: auto; padding-left: 10px;"></div>
        <div class="col-6 col-md-4" >
          <h1>G A A C</h1>
          <p style="padding-bottom:30px;">Gestor de Asesorías Académicas</p>
        </div>
        <div class="col-6 col-md-4"><img src="/img/logoDATICsinF.png" style="float: right;width: 200px;height: auto;margin-top: 9px;"></div>
      </div>
    </div>

    <div class="col container-right height100" id="formularioDerecha" style="padding-top:10px" >
      <div class="row">
        <div class="col-4"></div>
        <div class="col" style=" margin: 0 0 1em 0; text-align: right;">
          <p class="link_RegistroD">Registro Estudiante  | <a href="login" class="link_SingUpD" style="padding-right:1rem ;"><b>Iniciar Sesión </b><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-box-arrow-in-right" viewBox="0 0 16 16"></svg></a></p>
        </div>

      </div>
      <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z"/>
      <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
      </svg> </a>
      <center>
        <div class="card" style="width:32rem;">
          <form action="save-student" method="post">
            <div class="mb-3 row">
              <div class="col">
                <h3 style="float:left;"><b>Crear cuenta </b></h3><br><br>
                <c:if test="${param['message']=='succesfully'}">
                  <div class="alert alert-secondary">
                    Revisa tu bandeja de entrada y sigue los pasos para continuar con tu registro!
                  </div>
                </c:if>
                <label  for="inputUser" class="form-label" style=" font-size: large;float: left;"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                  <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                </svg> Nombre completo <span class="text-danger">*</span></label>
                <input type="text" id="inputUser" class="form-control" name="name">
              </div>
            </div>

            <div class="mb-3 row">
              <div class="col">
                <label for="exampleInputEmail" class="form-label" style="font-size:large;float: left;">Correo Electrónico Institucional <span class="text-danger">*</span></label>
                <input type="email" name="email" id="exampleInputEmail" class="form-control" placeholder="Correo" aria-label="Recipient's username" aria-describedby="basic-addon2">
              </div>
            </div>
            <c:if test="${param['message']=='bademail'}">
              <div class="alert alert-danger">
                Error ingresa un correo institucional de estudiante
              </div>
            </c:if>
            <div class="mb-3 row">
              <div class="col">
                <label for="inputPassword" class="form-label" style="font-size:large;float:left;"> Contraseña<span class="text-danger">*</span></label>
                <input type="password" class="form-control" id="inputPassword" name="password">
              </div>
            </div>
            <c:if test="${param['message']=='error'}">
              <div class="alert alert-danger">
                Error Usuario ya registrado
              </div>
            </c:if>
            <div class="mb-3 row">
              <div class="col">
                <label for="inputPassword" class="form-label" style=" font-size: large;float: left;">Confirmar contraseña<span class="text-danger">*</span></label>
                <input type="password" class="form-control" id="inputConffirmPassword" required>
              </div>
            </div>

            <div class="input-group mb-3">
              <label class="input-group-text" for="inputGroupSelect01">Carrera</label>
              <select class="form-select" id="inputGroupSelect01" name="carrera">
                <option hidden selected value="null">Selecciona una opción</option>
                <option value="dsm">Desarrollo de Software Multiplataforma</option>
                <option value="dd">Diseño Digital</option>
                <option value="dmi">Diseño de Moda Industrial</option>
                <option value="ird">Infraestructura de Redes Digitales</option>
              </select>
            </div>
            <!-- Sección Telefono -->
            <div class="mb-3 row">
              <div class="col">
                <div class="input-group mb-3">
                  <span class="input-group-text" id="telefonoEstudiante">Teléfono</span>
                  <input type="tel" class="form-control" id="basic-url" aria-describedby="basic-addon3" name="tel">
                </div>

              </div>
            </div>
            <div class="row ">
              <div class="col">
                <label class="form-label " style="font-size:large;float:left;"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16">
                  <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                  <path fill-rule="evenodd" d="M5.216 14A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216z"/>
                  <path d="M4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"/>
                </svg> Sexo </label>
              </div>

              <div class="col">
                <div class="form-check form-check-inline ">
                    <input class="form-check-input" type="radio" name="sexo" id="inlineRadio1" value="M">
                  <label class="form-check-label" for="inlineRadio1"> Femenino</label>
                </div>
              </div>
              <div class="col">
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="sexo" id="inlineRadio2" value="H">
                  <label class="form-check-label" for="inlineRadio2"> Masculino</label>
                </div>
              </div>
              <div class="col">
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="sexo" id="inlineRadio3" value="O">
                  <label class="form-check-label" for="inlineRadio3"> Otro</label>
                </div>
              </div>
              <div class="mb-3 row"style="padding-top:1rem;">
                <div class="col-6" >
                  <button type="submit" class="btn btn-primary" style="float:right; background-color:  #1b9c83 ;">Registrar</button>

                </div>
                <div class="col-6">
                  <a href="index" class="btn btn-light">Cancelar</a>
                </div>
              </div>
            </div>
          </form>

          <br>
          <!-- Botones de Registro/Cancelar -->

        </div>
      </center>
    </div>
  </div>
</div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script src="actions.js"></script>
</body>
</html>