<%-- 
    Document   : index
    Created on : 23 jul. 2021, 18:30:34
    Author     : Aylen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <!--archivo css-->
    <link rel="stylesheet" href="./css/mystyle.css">
    <link rel="stylesheet" href="./css/global.css">
    <title>Proyecto CRUD</title>
</head>
<body>
    <header class="col-12">
        <div >
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container-fluid">
                    <!--boton encoger los items al ver en celular-->
                  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <!--grupo de botones-->
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 center">
                      <li class="nav-item nav-button">
                        <a class="nav-link active" id="nav-button" aria-current="page" href="./index.jsp">Formulario</a>
                      </li>
                      <li class="nav-item nav-button">
                        <a class="nav-link active" id="nav-button" href="Controlador?accion=listar">Listas</a>
                      </li>
                    </ul>
                    <!--fin grupo botones-->
                  </div>
                </div>
              </nav>
            </div>
    </header>
    <main class="mb-5 mt-5">
        <div class="align-items-center d-flex">
            <form class="container main-container " action="Controlador">
                <!--nombre y apellido-->
                <div class="mb-3">
                    <label for="nombreyapellido" class="form-label">Nombre y Apellido</label>
                    <input type="text" name="txtNomAp" class="form-control" id="nombreyapellido" aria-describedby="nombreyapellido">
                </div>
                <!--email-->
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" name="txtEmail" class="form-control" id="email" aria-describedby="emailHelp" required>
                </div>
                <!--edad-->
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Edad</label>
                    <input type="number" name="numEdad" class="form-control" id="exampleInputPassword1" min="1" max="150">
                </div>
                <!--honestidad ante todo-->
                <div id="emailHelp" class="form-text mb-2">Nunca te vamos a pedir datos sensibles, excepto esta vez.</div>
                <!--checkbox-->
                <div class="mb-3 form-check">
                    <input type="checkbox" class="form-check-input no-border" id="exampleCheck1" required>
                    <label class="form-check-label" for="exampleCheck1">Acepto Términos</label>
                </div>
                <!--submite-->
                <button type="submit" name="accion" value="Agregar" class="btn no-border button-custom">Agregar</button>
            </form>
        </div>
    </main>
    <footer>
        <div class="d-flex justify-content-center align-content-end text-center ">
            <div class="pe-3 color-change">
                <p>Nombre</p>
                <p> Emanuel Lovecchio</p>
                <p> Aylen Gomez </p>
                <p> Florencia Bezmalinovich </p>
            </div>
            <div class="ps-3 border-start color-change">
                <p> Email </p>
                <p> eflovecchio@gmail.com </p>
                <p> aylen.p.gomez@gmail.com</p>
                <p> florenciabezmalinovich@
                    gmail.com</p>
            </div>
        </div>
    </footer>
</body>
</html>
