<%-- 
<<<<<<< HEAD
    Document   : Login
    Created on : 5/09/2021, 05:37:00 PM
    Author     : Mellany
=======
    Document   : OlvidoContraseña
    Created on : 28/08/2021, 02:26:50 PM
    Author     : Camilo
>>>>>>> 82062e218b7c8eaf0604d196a8b63f2cf1adf84a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<<<<<<< HEAD
<html lang="en">
    <head>

        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Terre | Recuperación Clave</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons 
        <link href="assets/img/favicon.png" rel="icon">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">-->

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
        <link href="assets/vendor/aos/aos.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
        <script src="https://kit.fontawesome.com/a81368914c.js"></script>
        <!-- Template Main CSS File -->
        <link href="assets/css/estiloLogin.css" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" href="assets/img/icon/icono.png">
        <!-- =======================================================
        * Template Name: Selecao - v4.3.0
        * Template URL: https://bootstrapmade.com/selecao-bootstrap-template/
        * Author: BootstrapMade.com
        * License: https://bootstrapmade.com/license/
        ======================================================== -->
    </head>
    <body>
        <br>

        <br>
        <div class="cont">

            <div class="form sign-in">
                <form method="Post" action="Usuario">
                    <span>
                        <div class="">
                            <h1><a href="index.html"><img src="assets/img/icon/TERRE2.png" alt="TERRE" style=" width: 230px; height: 45px; margin-left: 28%"></a></h1>
                        </div>
                        <br>
                    </span>
                    
                        <div  id="g-txtCorreo" class="i">
                            
                            <label for="txtCorreo"> 
                                <i class="fas fa-user"></i>
                                <span >Correo</span> 
                            </label>
                            
                            <div class="frm-g-input">
                                <label>
                                <input type="text" name="txtCorreo" id="txtCorreo" class="input" placeholder="Ingrese su Correo"/><br>
                                </label>
                            </div>
                            <div style=" padding-left: 130px;">
                                <h6>Se enviara una nueva contraseña al correo. </h6>
                                <h6 style="color: #00FF00;">Con la que podra ingresar y cambiar su contraseña.</h6>
                                <button style="padding-left: 10px; font-weight: bold" type="submit" class="submit" value="Enviar">Enviar</button>
                                <input type="hidden" name="opcion" value="12"/>            
                            </div>
                            
                        </div>
                 
                    <input type="hidden" id="opcion" name="opcion" value="1">
                    <script type="text/javascript" src="assets/js/main.js"></script>
                    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

                    <%
                        if (request.getAttribute("mensajeError") != null) {  %>           
                    ${mensajeError}
                    <%} else {%>
                    ${mensajeExito}
                    <% }%>

                    <a style="position: absolute; padding-left: 250px;" class="forgot-pass" href="Login.jsp">Volver al <span>Login</span></a>
                </form>
            </div>
            <div class="sub-cont">
                <div class="img">
                    <div class="img__text m--up">
                        <h2>¿Nuevo aquí?</h2>
                        <p>¡Regístrate y descubre una gran cantidad de nuevas oportunidades!</p>
                    </div>
                    <div class="img__text m--in">
                        <h2>¿Eres uno de nosotros?</h2>
                        <p>Si ya tiene una cuenta, inicia sesión. ¡Te extrañamos!</p>
                    </div>
                    <div class="img__btn">
                        <span class="m--up">Registrarme</span>
                        <span class="m--in">Iniciar sesión</span>
                    </div>
                </div>



                <div class="form sign-up">
                    <div class="">
                        <h1><a href="index.html"><img src="assets/img/icon/TERRE2.png" alt="TERRE" style=" width: 230px; height: 45px; margin-left: 28%"></a></h1>
                        <!-- Uncomment below if you prefer to use an image logo -->
                        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
                    </div>
                </div>
            </div>
        </div>
        <script src="./assets/js/login.js"></script>
    </body>
</html>

=======
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </head>
    <body>

        <h1>Olvido de Constraseña</h1>
        <form method="Post" action="Usuario">
            <div id="g-txtCorreo">
                <label for="txtCorreo">Correo</label>
                <div class="frm-g-input">
                    <input type="text" name="txtCorreo" id="txtCorreo" class="frm-input" placeholder="Ingrese su Correo"/><br>
                    <label>Si su correo se encuentra en el sistema se enviara una nueca contraseña con la que podra ingresar y cambiar su contraseña</label><br><br>
                    <button>Enviar</button>
                    <input type="hidden" name="opcion" value="12"/>            
                </div>
            </div>
        </form>
        <a href="Login.jsp"><button type="submit">Atras</button></a> 
        <%
    if (request.getAttribute("mensajeError") != null) {  %>           
        ${mensajeError}
        <%} else {%>
        ${mensajeExito}
        <% }%>

    </body>
</html>
>>>>>>> 82062e218b7c8eaf0604d196a8b63f2cf1adf84a
