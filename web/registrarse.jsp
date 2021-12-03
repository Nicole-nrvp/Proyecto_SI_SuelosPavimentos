<%-- 
    Document   : Registrarse
    Created on : 21/08/2021, 05:25:48 PM
    Author     : Camilo
--%>

<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="sesiones.jsp" %>
<!DOCTYPE html>


<html lang="en">

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.0/css/bootstrap.min.css" integrity="sha512-NZ19NrT58XPK5sXqXnnvtf9T5kLXSzGQlVZL9taZWeTBtXoN3xIfTdxbkQh6QSoJfJgpojRqMfhyqBAAEeiXcA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="assets/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="https://kit.fontawesome.com/3c31f4977d.js" crossorigin="anonymous"></script>

        <!--plantilla nueva-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <title>Terre | Usuarios </title>

        <link rel="shortcut icon" href="assets/img/icon/icono.png">
        <meta content="Responsive admin theme build on top of Bootstrap 4" name="description" />
        <meta content="Themesdesign" name="author" />
        <link rel="shortcut icon" href="assets/images/favicon.ico">



        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">

        <link href="assets/css/icons.css" rel="stylesheet" type="text/css">
        <link href="assets/css/style.css" rel="stylesheet" type="text/css">

    </head>

    <body> 

        <div class="header-bg">
            <!-- Navigation Bar-->
            <header id="topnav">
                <div class="topbar-main">
                    <div class="container-fluid">

                        <!-- Logo-->
                        <div>
                            <a href="index.jsp" class="logo">
                                <span class="logo-light">
                                    <i class="mdi mdi-camera-control"></i> Terre
                                </span>
                            </a>
                        </div>
                        <!-- End Logo-->

                        <div class="menu-extras topbar-custom navbar p-0">
                            <ul class="list-inline d-none d-lg-block mb-0">
                                <li class="hide-phone app-search float-left">
                                    <form role="search" class="app-search">
                                        <div class="form-group mb-0">
                                            <input type="text" class="form-control" placeholder="Search..">
                                            <button type="submit"><i class="fa fa-search"></i></button>
                                        </div>
                                    </form>
                                </li>
                            </ul>

                            <ul class="navbar-right ml-auto list-inline float-right mb-0">
                                <!-- language-->
                                <li class="dropdown notification-list list-inline-item d-none d-md-inline-block">
                                    <a class="nav-link dropdown-toggle arrow-none waves-effect" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                        <img src="assets/img/flags/spain_flag.jpg" class="mr-2" height="12" alt="" />Español <span class="mdi mdi-chevron-down" ></span>

                                    </a>
                                </li>

                                <!-- full screen -->
                                <li class="dropdown notification-list list-inline-item d-none d-md-inline-block">
                                    <a class="nav-link waves-effect" href="#" id="btn-fullscreen">
                                        <i class="mdi mdi-arrow-expand-all noti-icon"></i>
                                    </a>
                                </li>

                                <!-- notification -->
                                <li class="dropdown notification-list list-inline-item">
                                    <a class="nav-link dropdown-toggle arrow-none waves-effect" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                        <i class="mdi mdi-bell-outline noti-icon"></i>
                                        <span class="badge badge-pill badge-danger noti-icon-badge">3</span>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right dropdown-menu-animated dropdown-menu-lg px-1">
                                        <!-- item-->
                                        <h6 class="dropdown-item-text">
                                            Notificaciones
                                        </h6>
                                        <div class="slimscroll notification-item-list">
                                            <!-- item-->
                                            <a href="javascript:void(0);" class="dropdown-item notify-item active">
                                                <div class="notify-icon bg-success"><i class="mdi mdi-cart-outline"></i></div>
                                                <p class="notify-details"><b>Su tarea ha sido asignada</b><span class="text-muted">Se ha registrado nuevas solicitudes</span></p>
                                            </a>

                                            <!-- item-->
                                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                                <div class="notify-icon bg-danger"><i class="mdi mdi-message-text-outline"></i></div>
                                                <p class="notify-details"><b>Nuevo mensaje</b><span class="text-muted">Usted tiene 10 mensajes</span></p>
                                            </a>


                                        </div>
                                        <!-- All-->
                                        <a href="javascript:void(0);" class="dropdown-item text-center notify-all text-primary">
                                            Ver Todo <i class="fi-arrow-right"></i>
                                        </a>
                                    </div>
                                </li>

                                <li class="dropdown notification-list list-inline-item">
                                    <div class="dropdown notification-list nav-pro-img">
                                        <a class="dropdown-toggle nav-link arrow-none nav-user" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                            <img src="assets/img/users/user-4.jpg" alt="user" class="rounded-circle">
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                                            <!-- item-->
                                            <a class="dropdown-item" href="#"><i class="mdi mdi-account-circle"></i> Perfil</a>
                                            <a class="dropdown-item d-block" href="#"><span class="badge badge-success float-right">1</span><i class="mdi mdi-settings"></i> Configuración</a>
                                            <a class="dropdown-item" href="#"><i class="mdi mdi-lock-open-outline"></i> Bloquear Pantalla</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item text-danger" href="Login.jsp"><i class="mdi mdi-power text-danger"></i> Cerra Sesión</a>
                                        </div>
                                    </div>
                                </li>

                                <li class="menu-item dropdown notification-list list-inline-item">
                                    <!-- Mobile menu toggle-->
                                    <a class="navbar-toggle nav-link">
                                        <div class="lines">
                                            <span></span>
                                            <span></span>
                                            <span></span>
                                        </div>
                                    </a>
                                    <!-- End mobile menu toggle-->
                                </li>

                            </ul>

                        </div>
                        <!-- end menu-extras -->

                        <div class="clearfix"></div>

                    </div>
                    <!-- end container -->
                </div>
                <!-- end topbar-main -->

                <!-- MENU Start -->
                
                <!-- end navbar-custom -->
            </header>
            <!-- End Navigation Bar-->

        </div>
        <!-- header-bg -->

        <div class="wrapper">
            <div class="container-fluid">
                <!-- Page-Title -->
                <div class="page-title-box">
                    <div class="row align-items-center">
                        <div class="col-sm-6">
                            <h4 class="page-title"></h4>
                        </div>
                        <div class="col-sm-6">
                            
                        </div>
                    </div>
                    <!-- end row -->
                </div>

                <div class="row">
                    <div class="col-12">
                        <div class="card m-b-30">

                            <div class="card-body">
                                <%                                    if (usuVO2 != null) {
                                %>
                                <form method="post" action="Usuario" id="register-form" novalidate="novalidate" > 
                                    <h4 class="mt-0 header-title">Registrarse</h4>
                                    <p class="sub-title">Aqui podemos registrar nuestros datos personales</p>

                                    <div class="form-group row">
                                        <label for="example-text-input" class="col-sm-2 col-form-label">Nombre</label>
                                        <div class="col-sm-10">
                                            <input class="form-control" type="text" name="txtFunNombre" value=""  >
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="example-text-input" class="col-sm-2 col-form-label">Apellido</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" name="txtApellido" value=""  id="example-text-input">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="example-text-input" class="col-sm-2 col-form-label">Celular</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control"  name="txtCelular" value="" >
                                        </div>
                                    </div>                                    

                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label">Tipo de documento</label>
                                        <div class="col-sm-10">
                                            <select class="form-control" name="txtTipoDoc">                                               

                                                <option>CC</option>
                                                <option>TI</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="example-text-input" class="col-sm-2 col-form-label">N° documento</label>
                                        <div class="col-sm-10">
                                            <input class="form-control" type="text" name="txtDoc" value="" >
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="example-text-input" class="col-sm-2 col-form-label">Correo</label>
                                        <div class="col-sm-10">
                                            <input class="form-control" type="text" name="txtCorreo" value="<%=usuVO2.getUsuCorreo()%>" readonly>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-sm-2 col-form-label">Sexo</label>
                                        <div class="col-sm-10">
                                            <select class="form-control" name="txtSexo">                                              
                                                <option value="1">FEMENINO</option>

                                                <option value="0">MASCULINO</option>



                                            </select>
                                        </div>
                                    </div>                     

                                    <div class="form-group row">
                                        <label for="example-date-input" class="col-sm-2 col-form-label">Fecha de Nacimiento</label>
                                        <div class="col-sm-10">
                                            <input class="form-control" type="date" name="txtFechaNacimiento" value="" id="example-date-input">
                                        </div>
                                    </div>                          

                                    <div class="form-group row">
                                        <label for="example-text-input" class="col-sm-2 col-form-label">Dirección</label>
                                        <div class="col-sm-10">
                                            <input class="form-control" type="text" name="txtDireccion" value="" id="example-text-input">
                                        </div>
                                    </div>
                                        
                                    <div class="form-group row">
                                        <label for="txtClave" class="col-sm-2 col-form-label">Contraseña</label>
                                        <div class="col-sm-10">
                                            <input class="form-control" type="password" name="txtClave" value="" >
                                        </div>
                                    </div>
                                        
                                    <div class="form-group row">
                                        <label for="txtClave2" class="col-sm-2 col-form-label">Confirmar Contraseña</label>
                                        <div class="col-sm-10">
                                            <input class="form-control" type="password" name="txtClave2" value="" >
                                        </div>
                                    </div>
                                    <input type="hidden" name="txtFunId" value="<%=usuVO2.getUsuId()%>">
                                    <input type="hidden" name="txtPuesto" value="<%=usuVO2.getUsuPassword()%>"> 
                                    <input type="hidden" name="txtEstado" value="ACTIVO">
                                    <input type="hidden" id="opcion" name="opcion" value="8">
                                    <button type="submit" id="boton" class="btn btn-warning">Registrarse</button>                                                                                  
                                </form>
                                <%}
                                    if (request.getAttribute("mensajeError") != null) {  %>           
                                ${mensajeError}
                                <%} else {%>
                                ${mensajeExito}
                                <% }%>
                            </div>

                            <!--Cardo Body END-->
                        </div> <!-- end col -->
                    </div> <!-- end row -->
                    <!-- end wrapper -->

                    <!-- Footer -->
                    <footer class="footer">
                        © 2019 - 2020 Stexo <span class="d-none d-sm-inline-block"> - Crafted with <i class="mdi mdi-heart text-danger"></i> by Themesdesign</span>.
                    </footer>

                    <!-- End Footer -->



                    <!-- App js -->




                    <!-- jQuery library MODAL-->
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

                    <!-- Latest minified bootstrap js MODAL-->
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



                    <!-- Bootstrap core JavaScript-->
                    <script src="assets/vendor/jquery/jquery.min.js"></script>



                    <!-- Core plugin JavaScript-->
                    <script src="assets/vendor/jquery-easing/jquery.easing.min.js"></script>

                    <!-- Custom scripts for all pages-->
                    <script src="assets/js/sb-admin-2.min.js"></script>


                    <!--Validaciones de Campos-->
                    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
                    <script src='https://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js'></script>
                    <script src="assets/js/validacionesCampo/Funcionario/registrarFuncionario.js"></script>


                    </body>
                    </html>

