<%-- 
    Document   : menu.jsp
    Created on : 21/06/2021, 08:27:19 PM
    Author     : Camilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html  lang="es">
    <head>
        
  <!-- Template Main CSS File -->
  <link href="assets/css/estiloIndex.css" rel="stylesheet" type="text/css"/>
  <link rel="shortcut icon" href="assets/img/icon/icono.png">
        <meta charset="UTF-8">
        <title>Terre | Equipo</title>
        <link href="assets/css/estiloMenu.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/estiloAcerca.css" rel="stylesheet" type="text/css"/>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
    </head>
    <body>
        <header class="header">
            <div class="container">
                <div class="btn-menu">
                    <label for="btn-menu">☰</label>
                </div>
                <div class="logo">
                    <h1>Terre</h1>
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

                    <a href="#">Usuarios</a>
                    <a href="#">Solicitud</a>
                    <a href="#">Muestra</a>
                    <a href="#">Prueba</a>
                    <a href="#">Procedimiento</a>
                    <a href="#">Clase de Ensayo</a>
                    <a href="#">Tipo de Ensayo</a>
                </nav>
                <label for="btn-menu">✖️</label>
            </div>
        </div>
        <br>
        <br><br><br><br><br><br><br><br>

        <!-- IMAGENES -->
        <div class="imagenes">
            <div>
                <img src="assets/img/camilo.jpeg" alt="" />
                <h3>Camilo Blanquicet</h3>
                <p>
                    Camilo 18 años
                    <br>
                    Habilidades: La bicleta y la guitarra
                </p>
            </div>
            <div>
                <img src="assets/img/viviana.jpeg" alt="" />
                <h3>Viviana Rosillo</h3>
                <p>
                    Viviana 18 años
                    <br>
                    Habilidades: Dibujo y aprendizaje
                </p>
            </div>
            <div>
                <img src="assets/img/nicol.jpeg" alt="" />
                <h3>Nicole Romero</h3>
                <p>
                    Nicole 17 años
                    <br>
                    Habilidades: Liderazgo y fotografía
                </p>
            </div>
            <div>
                <img src="assets/img/mellany.jpeg" alt="" />
                <h3>Mellany Herrera</h3>
                <p>
                    Mellany 17 años
                    <br>
                    Habilidades: Hablar con fluidez 
                </p>
            </div>
        </div>

    </body>
</html>
