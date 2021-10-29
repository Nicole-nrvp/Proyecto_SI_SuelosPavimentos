<%-- 
    Document   : menu.jsp
    Created on : 21/06/2021, 08:27:19 PM
    Author     : Camilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html  lang="es">
    <head>
        <meta charset="UTF-8">
        <link href="assets/css/estiloIndex.css" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" href="assets/img/icon/icono.png">
        <title>Terre  | Solicitud</title>
        <link href="assets/css/MenuStyle.css" rel="stylesheet" type="text/css"/>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
    </head>
    <body>
        <header class="header">
            <div class="container">
                <div class="btn-menu">
                    <label for="btn-menu">☰</label>
                </div>
                <div class="logo">
                    <h1>Terre - Solicitud</h1>
                </div>
                <nav class="menu">
                    <a href="Menu.jsp">Inicio</a>
                    <a href="Nosotros.jsp">Quienes Somos</a>
                    <a href="MyV.jsp">Misión y Visión</a>
                    <a href="Contacto.jsp">Contacto</a>
                    <a href="IniciarSesion.jsp">Cerrar Sesión</a>
                </nav>
            </div>
        </header>
        <div class="capa"></div>
        <!--	--------------->
        <input type="checkbox" id="btn-menu">
        <div class="container-menu">
            <div class="cont-menu">
                <nav>

                    <a href="#">Reportes</a>

                    <a href="agregarSolicitud.jsp">Agregar Solicitud</a>
                    <a href="consultarSolicitud.jsp">Buscar Solicitud</a>
                </nav>
                <label for="btn-menu">✖️</label>
            </div>
        </div>
    </body>
</html>
