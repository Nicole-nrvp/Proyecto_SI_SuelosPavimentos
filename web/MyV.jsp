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
        <title>Terre | Mision y Vision</title>
        <link href="assets/css/estiloMyV.css" rel="stylesheet" type="text/css"/>
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
                <center><img src="assets/img/mision-cumplida.png" alt=""/></center>
                <br>
                <center>
                <h3>Misión</h3>
                <p>
                    GeoSty tiene como misión brindar un buen software para diferentes empresas en el diseño y creación de sus sistemas de información para así tener u método de salvaguardar y administrar información importante de dicha empresa.
                </p>
                </center>
            </div>
            <div>
                <center><img src="assets/img/observacion.png" alt="" /></center>
                <br>
                <center>
                <h3>Visión</h3>
                <p>
                    En la organización se planea servir mejor a nuestros clientes, ofreciendo nuestros servicio de diseño y creación de sus sistemas de información, teniendo como expectativas cumplir con el servicio y así mismo los clientes optimicen el desarrollo de su empresa.                
                </p>
                </center>
            </div>

        </div>

    </body>
</html>
