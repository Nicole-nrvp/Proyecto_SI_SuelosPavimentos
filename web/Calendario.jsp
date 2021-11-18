<%-- 
    Document   : Calendario
    Created on : 28/10/2021, 08:05:39 PM
    Author     : Valentina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <title>Terre | Calendario</title>
    <link rel="shortcut icon" href="assets/img/icon/icono.png">
    <meta content="Responsive admin theme build on top of Bootstrap 4" name="description" />
    <meta content="Themesdesign" name="author" />
    <link rel="shortcut icon" href="assets/images/favicon.ico">

    <!--calendar css-->
    <link href="plugins/fullcalendar/css/fullcalendar.min.css" rel="stylesheet" type="text/css"/>

    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="assets/css/metismenu.min.css" rel="stylesheet" type="text/css">
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
                                            <a class="dropdown-item" href="editarDatos.jsp"><i class="mdi mdi-account-circle"></i> Perfil</a>
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
                <div class="navbar-custom">
                    <div class="container-fluid">

                        <div id="navigation">

                            <!-- Navigation Menu-->
                            <ul class="navigation-menu">

                                <li class="has-submenu">
                                    <a href="index.jsp"><i class="icon-accelerator"></i> Home</a>
                                </li>

                                <li class="has-submenu">
                                    <a href="#"><i class="icon-life-buoy"></i> Modulos <i class="mdi mdi-chevron-down mdi-drop"></i></a>
                                    <ul class="submenu">

                                        <li>
                                            <a href="consultarUsuario.jsp">Usuarios </a>
                                        </li>


                                        <li>
                                            <a href="consultarCliente.jsp">Clientes </a>
                                        </li>

                                        <li>
                                            <a href="consultarSolicitud.jsp">Solicitudes </a>
                                        </li>


                                        <li class="has-submenu">
                                            <a href="#">Laboratorio</a>
                                            <ul class="submenu">
                                                <li><a href="">Prueba</a></li>  
                                                <li><a href="consultarMuestra.jsp">Muestra</a></li>
                                                <li><a href="consultarTipoMuestra.jsp">Tipo Muestra</a></li>
                                                <li><a href="#">Aspecto</a></li>
                                                <li><a href="#">Procedimiento</a></li>
                                            </ul>
                                        </li>

                                        <li class="has-submenu">
                                            <a href="#">Clases</a>
                                            <ul class="submenu">
                                                <li><a href="ConsultarClaseEnsayo.jsp">Clase de ensayo</a></li>
                                                <li><a href="ConsultarTipoEnsayo.jsp">Tipo de ensayo</a></li>
                                            </ul>
                                        </li>

                                    </ul>
                                </li>

                                <li class="has-submenu">
                                    <a href="#"><i class="icon-life-buoy"></i> Asignaciones <i class="mdi mdi-chevron-down mdi-drop"></i></a>
                                    <ul class="submenu">

                                        <li>
                                            <a href="Calendario.jsp">Calendario </a>
                                        </li>

                                    </ul>
                                </li>


                                <li class="has-submenu">
                                    <a href="#"><i class="icon-life-buoy"></i> Reportes <i class="mdi mdi-chevron-down mdi-drop"></i></a>
                                    <ul class="submenu">


                                        <li class="has-submenu">
                                            <a href="#">Parametrizados </a>
                                        </li>

                                        <li class="has-submenu">
                                            <a href="#">Mapa</a>
                                            <ul class="submenu">
                                                <li><a href="maps-google.html"> Google Map</a></li>
                                            </ul>
                                        </li>

                                    </ul>
                                </li>
                                
                                <li class="has-submenu">
                                    <a href="#"><i class="icon-life-buoy"></i> Otros <i class="mdi mdi-chevron-down mdi-drop"></i></a>
                                    <ul class="submenu">

                                        <li>
                                            <a href="DiccionariodeDatos.jsp">Diccionario de Datos </a>
                                        </li>

                                    </ul>
                                </li>



                            </ul>
                            <!-- End navigation menu -->
                        </div>
                        <!-- end #navigation -->
                    </div>
                    <!-- end container -->
                </div>
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
                        <h4 class="page-title">Calendar</h4>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-right">
                            <li class="breadcrumb-item"><a href="javascript:void(0);">Home</a></li>
                            <li class="breadcrumb-item active">Calendario</li>
                        </ol>
                    </div>
                </div>
                <!-- end row -->
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="card m-b-30">
                        <div class="card-body">

                            <div class="row">
                                <div class="col-xl-2 col-lg-3 col-md-4">

                                    <h4 class="m-t-5 m-b-15 font-14">Eventos Creados</h4>
                                    <form method="post" id="add_event_form" class="m-t-5 m-b-20">
                                        <input type="text" class="form-control new-event-form" placeholder="Add new event..." />
                                    </form>

                                    <div id='external-events'>
                                        <h4 class="m-b-15 font-14">Eventos arrastrables</h4>
                                        <div class='fc-event'>My Event 1</div>
                                        <div class='fc-event'>My Event 2</div>
                                        <div class='fc-event'>My Event 3</div>
                                        <div class='fc-event'>My Event 4</div>
                                        <div class='fc-event'>My Event 5</div>
                                    </div>

                                    <!-- checkbox -->
                                    <div class="custom-control custom-checkbox mt-3">
                                        <input type="checkbox" class="custom-control-input" id="drop-remove" data-parsley-multiple="groups" data-parsley-mincheck="2">
                                        <label class="custom-control-label" for="drop-remove">Remove after drop</label>
                                    </div>

                                </div>

                                <div id='calendar' class="col-xl-10 col-lg-9 col-md-8"></div>

                            </div>
                            <!-- end row -->

                        </div>
                    </div>
                </div> <!-- end col -->
            </div> <!-- end row --> 

        </div>
        <!-- end container-fluid -->
    </div>
    <!-- end wrapper -->

    <!-- Footer -->
    <footer class="footer">
        © 2019 - 2020 Stexo <span class="d-none d-sm-inline-block"> - Crafted with <i class="mdi mdi-heart text-danger"></i> by Themesdesign</span>.
    </footer>

    <!-- End Footer -->

    <!-- jQuery  -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/jquery.slimscroll.js"></script>
    <script src="assets/js/waves.min.js"></script>

    <!-- Jquery-Ui -->
    <script src="plugins/jquery-ui/jquery-ui.min.js"></script>
    <script src="plugins/moment/moment.js"></script>
    <script src='plugins/fullcalendar/js/fullcalendar.min.js'></script>
    <script src="assets/pages/calendar-init.js"></script>

    <!-- App js -->
    <script src="assets/js/app.js"></script>

</body>

</html>
