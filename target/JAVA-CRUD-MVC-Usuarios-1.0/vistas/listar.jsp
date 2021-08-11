<%-- 
    Document   : listar
    Created on : 23 jul. 2021, 18:31:04
    Author     : Aylen
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Usuario"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
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
                        <a class="nav-link active" id="nav-button" href="#">Listas</a>
                      </li>
                    </ul>
                    <!--fin grupo botones-->
                  </div>
                </div>
              </nav>
            </div>
    </header>
    <main class="mb-5 mt-5">
        <div class="main-container-lista">
            <div class="contenerdor-tabla">
            <div class="text-center">
                <h1 class="h1">Usuarios</h1>
            </div> 
            <table border="1" class="table table-striped">
                <thead class="thead-light">
                    <tr>
                        <td>ID</td>
                        <td>NOMBRE Y APELLIDO</td>
                        <td>EMAIL</td>
                        <td>EDAD</td>
                        <td>ACCIONES</td>
                    </tr>
                </thead>
                <%
                    UsuarioDAO dao = new UsuarioDAO();
                    List<Usuario>list = dao.listar();
                    Iterator<Usuario>iter = list.iterator();
                    Usuario user = null;
                    while(iter.hasNext()){
                        user = iter.next();
                %>
                <tbody>
                    <tr>
                        <td><%= user.getId()%></td>
                        <td><%= user.getApNom()%></td>
                        <td><%= user.getEmail()%></td>
                        <td><%= user.getEdad()%></td>
                        <td>
                            <a href="Controlador?accion=editar&id=<%= user.getId()%>">Editar</a>
                            <a href="Controlador?accion=eliminar&id=<%= user.getId()%>">Eliminar</a>
                        </td>
                    </tr>
                    
                </tbody>
                <%}%>
            </table>
            </div>
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
