<%-- 
    Document   : Login
    Created on : 5/09/2021, 05:37:00 PM
    Author     : Mellany
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Terre | Login</title>
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
                <form method="post" action="Usuario">
                    <span>
                        <div class="">
                            <h1><a href="index.html"><img src="assets/img/icon/TERRE2.png" alt="TERRE" style=" width: 230px; height: 45px; margin-left: 28%"></a></h1>
                            <!-- Uncomment below if you prefer to use an image logo -->
                            <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
                        </div>
                        <br>
                    </span>
                    <label>
                        <div class="i">
                            <i class="fas fa-user"></i>
                            <span >Correo</span>
                        </div>
                        <input name="txtCorreo" type="text" class="input" required> 
                    </label>
                    <label>
                        <div class="input-div pass">
                            <div class="i">
                                <i class="fas fa-lock"></i>
                                <span>Contraseña</span>
                            </div>
                            <input name="txtClave" type="password" class="input" required>
                        </div>
                    </label>

                    <a style=" padding-left: 230px;" class="forgot-pass" href="olvidoClave.jsp">Olvido su contraseña?</a><br>
                    <input type="checkbox" id="cbox1" required /><a style=" padding-left: 160px;" class="forgot-pass" href="TerminosCondicciones.jsp">Estoy de acuerdo con los terminos y condicciones</a>

                    <br>
                    <button type="submit" class="submit" value="Iniciar Sesion">Ingresar</button>

                    <input type="hidden" id="opcion" name="opcion" value="1">
                    <script type="text/javascript" src="assets/js/main.js"></script>
                    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

                    <%
                        if (request.getAttribute("mensajeError") != null) {  %>           
                    ${mensajeError}
                    <%} else {%>
                    ${mensajeExito}
                    <% }%>

                    <a style="position: absolute; padding-left: 251px;" class="forgot-pass" href="PaginaPrincipal.jsp">Volver al <span>inicio</span></a>

                </form>
            </div>
            <div class="sub-cont">
                <div class="img">
                    <div class="img__text m--up">
                        <h2>¿Nuevo aquí?</h2>
                        <p>¡Contactanos, descubre una gran cantidad de nuevas oportunidades!</p>
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
                    <label>
                        <form action="Usuario" method="POST">
                        <i class="fas fa-user"></i>
                        <span>Nombre Completo</span>
                        <input type="text" name="txtNombre"/>
                    </label>
                    <label>
                        <div class="input-div pass">
                            <div class="i">
                                <i class="fas fa-at"></i>
                                <span >Correo</span>
                            </div>
                            <input name="txtCorreo" type="text" class="input" required> 
                        </div>
                    </label>
                    <label>
                        <div class="input-div pass">
                            <div class="i">
                                <i class="fas fa-lock"></i>
                                <span>Numero Telefonico</span>
                            </div>
                            <input name="txtCelular" type="text" class="input" required>
                        </div>
                    </label>
                    
                    <br>
                    <input type="hidden" name="opcion" value="17">
                    <button type="submit" class="submit" value="Iniciar Sesion">Contactanos</button>
                    </form>
                </div>
            </div>
        </div>
        <script src="./assets/js/login.js"></script>
    </body>
</html>