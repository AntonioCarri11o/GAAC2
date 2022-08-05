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
      <div class="lesscontainer">
        <div class="container-fluid scont" style="padding:0;">
            <a class="btn btnexpand"data-bs-toggle="collapse" href="#multiCollapseExample1" role="button" aria-expanded="false" aria-controls="multiCollapseExample2">2022</a>
              <div class="row" style="width:80%;">
                <div class="col">
                  <div class="collapse multi-collapse"  id="multiCollapseExample1">
                    <div class="row" style="margin:1em;">
                      <div class="col">
                        <div class="cardcuat">
                            <div class="cardcuatheader" style="display: flex;"><p style="margin: 0 auto 0 auto;">Enero-Abril</p><div class="colorstatus"></div></div>
                            <div class="cardcuatbody" style="display:flex;">
                                <button class="btn" style="margin:2em auto 1em auto">Consultar</button>
                            </div>
                        </div>
                      </div>

                      <div class="col">
                        <div class="cardcuat">
                            <div class="cardcuatheader" style="display: flex;"><p style="margin: 0 auto 0 auto;">Mayo-Agosto</p><div class="colorstatus"></div></div>
                            <div class="cardcuatbody" style="display:flex;">
                                <button class="btn" style="margin:2em auto 1em auto">Consultar</button>
                            </div>
                        </div>
                      </div>
                      <div class="col">
                        <div class="cardcuat">
                            <div class="cardcuat">
                                <div class="cardcuatheader" style="display: flex;"><p style="margin: 0 auto 0 auto;">Septiembre-Diciembre</p><div class="colorstatus"></div></div>
                                <div class="cardcuatbody" style="display:flex;">
                                    <button class="btn" style="margin:2em auto 1em auto">Consultar</button>
                                </div>
                            </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <a class="btn btnexpand"data-bs-toggle="collapse" href="#multiCollapseExample2" role="button" aria-expanded="false" aria-controls="multiCollapseExample2">2021</a>
              <div class="row" style="width:80%;">
                <div class="col">
                  <div class="collapse multi-collapse"  id="multiCollapseExample2">
                    <div class="row" style="margin:1em;">
                      <div class="col">
                        <div class="cardcuat">
                            <div class="cardcuatheader" style="display: flex;"><p style="margin: 0 auto 0 auto;">Enero-Abril</p><div class="colorstatus"></div></div>
                            <div class="cardcuatbody" style="display:flex;">
                                <button class="btn" style="margin:2em auto 1em auto">Consultar</button>
                            </div>
                        </div>
                      </div>

                      <div class="col">
                        <div class="cardcuat">
                            <div class="cardcuatheader" style="display: flex;"><p style="margin: 0 auto 0 auto;">Mayo-Agosto</p><div class="colorstatus"></div></div>
                            <div class="cardcuatbody" style="display:flex;">
                                <button class="btn" style="margin:2em auto 1em auto">Consultar</button>
                            </div>
                        </div>
                      </div>
                      <div class="col">
                        <div class="cardcuat">
                            <div class="cardcuat">
                                <div class="cardcuatheader" style="display: flex;"><p style="margin: 0 auto 0 auto;">Septiembre-Diciembre</p><div class="colorstatus"></div></div>
                                <div class="cardcuatbody" style="display:flex;">
                                    <button class="btn" style="margin:2em auto 1em auto">Consultar</button>
                                </div>
                            </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <a class="btn btnexpand"data-bs-toggle="collapse" href="#multiCollapseExample3" role="button" aria-expanded="false" aria-controls="multiCollapseExample2">2020</a>
              <div class="row" style="width:80%;">
                <div class="col">
                  <div class="collapse multi-collapse"  id="multiCollapseExample3">
                    <div class="row" style="margin:1em;">
                      <div class="col">
                        <div class="cardcuat">
                            <div class="cardcuatheader" style="display: flex;"><p style="margin: 0 auto 0 auto;">Enero-Abril</p><div class="colorstatus"></div></div>
                            <div class="cardcuatbody" style="display:flex;">
                                <button class="btn" style="margin:2em auto 1em auto">Consultar</button>
                            </div>
                        </div>
                      </div>

                      <div class="col">
                        <div class="cardcuat">
                            <div class="cardcuatheader" style="display: flex;"><p style="margin: 0 auto 0 auto;">Mayo-Agosto</p><div class="colorstatus"></div></div>
                            <div class="cardcuatbody" style="display:flex;">
                                <button class="btn" style="margin:2em auto 1em auto">Consultar</button>
                            </div>
                        </div>
                      </div>
                      <div class="col">
                        <div class="cardcuat">
                            <div class="cardcuat">
                                <div class="cardcuatheader" style="display: flex;"><p style="margin: 0 auto 0 auto;">Septiembre-Diciembre</p><div class="colorstatus"></div></div>
                                <div class="cardcuatbody" style="display:flex;">
                                    <button class="btn" style="margin:2em auto 1em auto">Consultar</button>
                                </div>
                            </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <a class="btn btnexpand"data-bs-toggle="collapse" href="#multiCollapseExample4" role="button" aria-expanded="false" aria-controls="multiCollapseExample2">2019</a>
              <div class="row" style="width:80%;">
                <div class="col">
                  <div class="collapse multi-collapse"  id="multiCollapseExample4">
                    <div class="row" style="margin:1em;">
                      <div class="col">
                        <div class="cardcuat">
                            <div class="cardcuatheader" style="display: flex;"><p style="margin: 0 auto 0 auto;">Enero-Abril</p><div class="colorstatus"></div></div>
                            <div class="cardcuatbody" style="display:flex;">
                                <button class="btn" style="margin:2em auto 1em auto">Consultar</button>
                            </div>
                        </div>
                      </div>

                      <div class="col">
                        <div class="cardcuat">
                            <div class="cardcuatheader" style="display: flex;"><p style="margin: 0 auto 0 auto;">Mayo-Agosto</p><div class="colorstatus"></div></div>
                            <div class="cardcuatbody" style="display:flex;">
                                <button class="btn" style="margin:2em auto 1em auto">Consultar</button>
                            </div>
                        </div>
                      </div>
                      <div class="col">
                        <div class="cardcuat">
                            <div class="cardcuat">
                                <div class="cardcuatheader" style="display: flex;"><p style="margin: 0 auto 0 auto;">Septiembre-Diciembre</p><div class="colorstatus"></div></div>
                                <div class="cardcuatbody" style="display:flex;">
                                    <button class="btn" style="margin:2em auto 1em auto">Consultar</button>
                                </div>
                            </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <a class="btn btnexpand"data-bs-toggle="collapse" href="#multiCollapseExample5" role="button" aria-expanded="false" aria-controls="multiCollapseExample2">2018</a>
              <div class="row" style="width:80%;">
                <div class="col">
                  <div class="collapse multi-collapse"  id="multiCollapseExample5">
                    <div class="row" style="margin:1em;">
                      <div class="col">
                        <div class="cardcuat">
                            <div class="cardcuatheader" style="display: flex;"><p style="margin: 0 auto 0 auto;">Enero-Abril</p><div class="colorstatus"></div></div>
                            <div class="cardcuatbody" style="display:flex;">
                                <button class="btn" style="margin:2em auto 1em auto">Consultar</button>
                            </div>
                        </div>
                      </div>

                      <div class="col">
                        <div class="cardcuat">
                            <div class="cardcuatheader" style="display: flex;"><p style="margin: 0 auto 0 auto;">Mayo-Agosto</p><div class="colorstatus"></div></div>
                            <div class="cardcuatbody" style="display:flex;">
                                <button class="btn" style="margin:2em auto 1em auto">Consultar</button>
                            </div>
                        </div>
                      </div>
                      <div class="col">
                        <div class="cardcuat">
                            <div class="cardcuat">
                                <div class="cardcuatheader" style="display: flex;"><p style="margin: 0 auto 0 auto;">Septiembre-Diciembre</p><div class="colorstatus"></div></div>
                                <div class="cardcuatbody" style="display:flex;">
                                    <button class="btn" style="margin:2em auto 1em auto">Consultar</button>
                                </div>
                            </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <a class="btn btnexpand"data-bs-toggle="collapse" href="#multiCollapseExample6" role="button" aria-expanded="false" aria-controls="multiCollapseExample2">2017</a>
              <div class="row" style="width:80%;">
                <div class="col">
                  <div class="collapse multi-collapse"  id="multiCollapseExample6">
                    <div class="row" style="margin:1em;">
                      <div class="col">
                        <div class="cardcuat">
                            <div class="cardcuatheader" style="display: flex;"><p style="margin: 0 auto 0 auto;">Enero-Abril</p><div class="colorstatus"></div></div>
                            <div class="cardcuatbody" style="display:flex;">
                                <button class="btn" style="margin:2em auto 1em auto">Consultar</button>
                            </div>
                        </div>
                      </div>

                      <div class="col">
                        <div class="cardcuat">
                            <div class="cardcuatheader" style="display: flex;"><p style="margin: 0 auto 0 auto;">Mayo-Agosto</p><div class="colorstatus"></div></div>
                            <div class="cardcuatbody" style="display:flex;">
                                <button class="btn" style="margin:2em auto 1em auto">Consultar</button>
                            </div>
                        </div>
                      </div>
                      <div class="col">
                        <div class="cardcuat">
                            <div class="cardcuat">
                                <div class="cardcuatheader" style="display: flex;"><p style="margin: 0 auto 0 auto;">Septiembre-Diciembre</p><div class="colorstatus"></div></div>
                                <div class="cardcuatbody" style="display:flex;">
                                    <button class="btn" style="margin:2em auto 1em auto">Consultar</button>
                                </div>
                            </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <a class="btn btnexpand"data-bs-toggle="collapse" href="#multiCollapseExample7" role="button" aria-expanded="false" aria-controls="multiCollapseExample2">2016</a>
              <div class="row" style="width:80%;">
                <div class="col">
                  <div class="collapse multi-collapse"  id="multiCollapseExample7">
                    <div class="row" style="margin:1em;">
                      <div class="col">
                        <div class="cardcuat">
                            <div class="cardcuatheader" style="display: flex;"><p style="margin: 0 auto 0 auto;">Enero-Abril</p><div class="colorstatus"></div></div>
                            <div class="cardcuatbody" style="display:flex;">
                                <button class="btn" style="margin:2em auto 1em auto">Consultar</button>
                            </div>
                        </div>
                      </div>

                      <div class="col">
                        <div class="cardcuat">
                            <div class="cardcuatheader" style="display: flex;"><p style="margin: 0 auto 0 auto;">Mayo-Agosto</p><div class="colorstatus"></div></div>
                            <div class="cardcuatbody" style="display:flex;">
                                <button class="btn" style="margin:2em auto 1em auto">Consultar</button>
                            </div>
                        </div>
                      </div>
                      <div class="col">
                        <div class="cardcuat">
                            <div class="cardcuat">
                                <div class="cardcuatheader" style="display: flex;"><p style="margin: 0 auto 0 auto;">Septiembre-Diciembre</p><div class="colorstatus"></div></div>
                                <div class="cardcuatbody" style="display:flex;">
                                    <button class="btn" style="margin:2em auto 1em auto">Consultar</button>
                                </div>
                            </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>    
              
              
              
        </div>
      </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>