<%-- 
    Document   : DiccionariodeDatos
    Created on : 14/09/2021, 09:18:32 PM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <title>TERRE | Diccionario </title>
        <meta content="Responsive admin theme build on top of Bootstrap 4" name="description" />
        <meta content="Themesdesign" name="author" />
        <link rel="shortcut icon" href="assets/images/favicon.ico">
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
                                            <a href="#">Calendario </a>
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
                        <!--<h4 class="page-title">Diccionario de datos</h4>-->
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-right">
                            <li class="breadcrumb-item"><a href="javascript:void(0);">Terre</a></li>
                            <li class="breadcrumb-item active">Diccionario de Datos</li>
                        </ol>
                    </div>
                </div>
                <!-- end row -->
            </div>

            <div class="row">

                <div class="col-12">
                    <div class="card m-b-30">
                        <div class="card-body">
                            
                            <h4 class="mt-0 header-title">Diccionario de Datos</h4>
                            <p class="sub-title">Aqui encontraras todos los terminos asociados con el estudio de suelos que puedas necesitar</p>

                            <!-- Nav tabs -->
                            <ul class="nav nav-pills nav-justified" role="tablist">
                                <li class="nav-item waves-effect waves-light">
                                    <a class="nav-link active" data-toggle="tab" href="#home-1" role="tab">
                                        <span class="d-none d-md-block">A</span><span class="d-block d-md-none"><i class="mdi mdi-home-variant h5"></i></span> 
                                    </a>
                                </li>
                                <li class="nav-item waves-effect waves-light">
                                    <a class="nav-link" data-toggle="tab" href="#home-2" role="tab">
                                        <span class="d-none d-md-block">B</span><span class="d-block d-md-none"><i class="mdi mdi-account h5"></i></span>
                                    </a>
                                </li>
                                <li class="nav-item waves-effect waves-light">
                                    <a class="nav-link" data-toggle="tab" href="#home-3" role="tab">
                                        <span class="d-none d-md-block">C</span><span class="d-block d-md-none"><i class="mdi mdi-email h5"></i></span>
                                    </a>
                                </li>
                                <li class="nav-item waves-effect waves-light">
                                    <a class="nav-link" data-toggle="tab" href="#home-4" role="tab">
                                        <span class="d-none d-md-block">D</span><span class="d-block d-md-none"><i class="mdi mdi-settings h5"></i></span>
                                    </a>
                                </li>
                                <li class="nav-item waves-effect waves-light">
                                    <a class="nav-link" data-toggle="tab" href="#home-5" role="tab">
                                        <span class="d-none d-md-block">E</span><span class="d-block d-md-none"><i class="mdi mdi-settings h5"></i></span>
                                    </a>
                                </li>
                                <li class="nav-item waves-effect waves-light">
                                    <a class="nav-link" data-toggle="tab" href="#home-6" role="tab">
                                        <span class="d-none d-md-block">F</span><span class="d-block d-md-none"><i class="mdi mdi-settings h5"></i></span>
                                    </a>
                                </li>
                                <li class="nav-item waves-effect waves-light">
                                    <a class="nav-link" data-toggle="tab" href="#home-7" role="tab">
                                        <span class="d-none d-md-block">G</span><span class="d-block d-md-none"><i class="mdi mdi-settings h5"></i></span>
                                    </a>
                                </li>
                                <li class="nav-item waves-effect waves-light">
                                    <a class="nav-link" data-toggle="tab" href="#home-8" role="tab">
                                        <span class="d-none d-md-block">H</span><span class="d-block d-md-none"><i class="mdi mdi-settings h5"></i></span>
                                    </a>
                                </li>
                                <li class="nav-item waves-effect waves-light">
                                    <a class="nav-link" data-toggle="tab" href="#home-9" role="tab">
                                        <span class="d-none d-md-block">I</span><span class="d-block d-md-none"><i class="mdi mdi-settings h5"></i></span>
                                    </a>
                                </li>
                                <li class="nav-item waves-effect waves-light">
                                    <a class="nav-link" data-toggle="tab" href="#home-10" role="tab">
                                        <span class="d-none d-md-block">J</span><span class="d-block d-md-none"><i class="mdi mdi-settings h5"></i></span>
                                    </a>
                                </li>
                                <li class="nav-item waves-effect waves-light">
                                    <a class="nav-link" data-toggle="tab" href="#home-11" role="tab">
                                        <span class="d-none d-md-block">K</span><span class="d-block d-md-none"><i class="mdi mdi-settings h5"></i></span>
                                    </a>
                                </li>
                                <li class="nav-item waves-effect waves-light">
                                    <a class="nav-link" data-toggle="tab" href="#home-12" role="tab">
                                        <span class="d-none d-md-block">L</span><span class="d-block d-md-none"><i class="mdi mdi-settings h5"></i></span>
                                    </a>
                                </li>
                                <li class="nav-item waves-effect waves-light">
                                    <a class="nav-link" data-toggle="tab" href="#home-13" role="tab">
                                        <span class="d-none d-md-block">M</span><span class="d-block d-md-none"><i class="mdi mdi-settings h5"></i></span>
                                    </a>
                                </li>
                                <li class="nav-item waves-effect waves-light">
                                    <a class="nav-link" data-toggle="tab" href="#home-14" role="tab">
                                        <span class="d-none d-md-block">N</span><span class="d-block d-md-none"><i class="mdi mdi-settings h5"></i></span>
                                    </a>
                                </li>
                                <li class="nav-item waves-effect waves-light">
                                    <a class="nav-link" data-toggle="tab" href="#home-15" role="tab">
                                        <span class="d-none d-md-block">Ñ</span><span class="d-block d-md-none"><i class="mdi mdi-settings h5"></i></span>
                                    </a>
                                </li>
                                <li class="nav-item waves-effect waves-light">
                                    <a class="nav-link" data-toggle="tab" href="#home-16" role="tab">
                                        <span class="d-none d-md-block">O</span><span class="d-block d-md-none"><i class="mdi mdi-settings h5"></i></span>
                                    </a>
                                </li>
                                <li class="nav-item waves-effect waves-light">
                                    <a class="nav-link" data-toggle="tab" href="#home-17" role="tab">
                                        <span class="d-none d-md-block">P</span><span class="d-block d-md-none"><i class="mdi mdi-settings h5"></i></span>
                                    </a>
                                </li>
                                <li class="nav-item waves-effect waves-light">
                                    <a class="nav-link" data-toggle="tab" href="#home-18" role="tab">
                                        <span class="d-none d-md-block">Q</span><span class="d-block d-md-none"><i class="mdi mdi-settings h5"></i></span>
                                    </a>
                                </li>
                                <li class="nav-item waves-effect waves-light">
                                    <a class="nav-link" data-toggle="tab" href="#home-19" role="tab">
                                        <span class="d-none d-md-block">R</span><span class="d-block d-md-none"><i class="mdi mdi-settings h5"></i></span>
                                    </a>
                                </li>
                                <li class="nav-item waves-effect waves-light">
                                    <a class="nav-link" data-toggle="tab" href="#home-20" role="tab">
                                        <span class="d-none d-md-block">S</span><span class="d-block d-md-none"><i class="mdi mdi-settings h5"></i></span>
                                    </a>
                                </li>
                                <li class="nav-item waves-effect waves-light">
                                    <a class="nav-link" data-toggle="tab" href="#home-21" role="tab">
                                        <span class="d-none d-md-block">T</span><span class="d-block d-md-none"><i class="mdi mdi-settings h5"></i></span>
                                    </a>
                                </li>
                                <li class="nav-item waves-effect waves-light">
                                    <a class="nav-link" data-toggle="tab" href="#home-22" role="tab">
                                        <span class="d-none d-md-block">U</span><span class="d-block d-md-none"><i class="mdi mdi-settings h5"></i></span>
                                    </a>
                                </li>
                                <li class="nav-item waves-effect waves-light">
                                    <a class="nav-link" data-toggle="tab" href="#home-23" role="tab">
                                        <span class="d-none d-md-block">V</span><span class="d-block d-md-none"><i class="mdi mdi-settings h5"></i></span>
                                    </a>
                                </li>
                                <li class="nav-item waves-effect waves-light">
                                    <a class="nav-link" data-toggle="tab" href="#home-24" role="tab">
                                        <span class="d-none d-md-block">W</span><span class="d-block d-md-none"><i class="mdi mdi-settings h5"></i></span>
                                    </a>
                                </li>
                                <li class="nav-item waves-effect waves-light">
                                    <a class="nav-link" data-toggle="tab" href="#home-25" role="tab">
                                        <span class="d-none d-md-block">X</span><span class="d-block d-md-none"><i class="mdi mdi-settings h5"></i></span>
                                    </a>
                                </li>
                                <li class="nav-item waves-effect waves-light">
                                    <a class="nav-link" data-toggle="tab" href="#home-26" role="tab">
                                        <span class="d-none d-md-block">Y</span><span class="d-block d-md-none"><i class="mdi mdi-settings h5"></i></span>
                                    </a>
                                </li>
                                <li class="nav-item waves-effect waves-light">
                                    <a class="nav-link" data-toggle="tab" href="#home-27" role="tab">
                                        <span class="d-none d-md-block">Z</span><span class="d-block d-md-none"><i class="mdi mdi-settings h5"></i></span>
                                    </a>
                                </li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane active p-3" id="home-1" role="tabpanel">
                                    <p class="mb-0">
                                        <div id="accordion">
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingOne">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a data-toggle="collapse" data-parent="#accordion"
                                                            href="#collapseOne" aria-expanded="true"
                                                            aria-controls="collapseOne" class="text-dark">
                                                            Absorción
                                                        </a>
                                                    </h5>
                                                </div>
            
                                                <div id="collapseOne" class="collapse show"
                                                        aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Transformación de parte de la energía electromagnética que se propaga en calor. 
                                                        En la banda de microondas y radiofrecuencias este fenómeno se produce por la 
                                                        polarización orientacional de las moléculas de agua.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwo"
                                                            aria-expanded="false" aria-controls="collapseTwo">
                                                            Agua de capilaridad
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Agua viscosa. Aquella que no forma parte de la capa de agua alrededor de los granos, 
                                                        pero que tampoco responde a variaciones gravitacionales.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingThree">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseThree"
                                                            aria-expanded="false" aria-controls="collapseThree">
                                                            Agua gravitacional
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Agua libre en un medio.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFour">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFour"
                                                            aria-expanded="false" aria-controls="collapseFour">
                                                            Agua higroscópica
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Agua de absorción. Humedad debida a molñeculas de agua del aire que son absorbidas por 
                                                        las partículas del sólido. El contenido de este tipo de humedad depende del porcentaje 
                                                        de humedad del aire, de la presión del aire y de la temperatura. El agua se sitúa formando 
                                                        una delgada capa alrededor de las superficies de los granos.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFive">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFive"
                                                            aria-expanded="false" aria-controls="collapseFive">
                                                            Aislantes
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Materiales con una conductividad inferior a 10-8 S/m.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSix">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSix"
                                                            aria-expanded="false" aria-controls="collapseSix">
                                                            Amplitud relativa
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Amplitud de la onda en un punto dividida por una amplitud de referencia. Normalmente 
                                                        se toma como amplitud de referencia la de la onda en el origen. En este trabajo se ha 
                                                        tomado la amplitud de la onda directa.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSeven">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSeven"
                                                            aria-expanded="false" aria-controls="collapseSeven">
                                                            Análisis granulométrico
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Determinación de los distintos tamaños de partículas que forman un suelo.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingEight">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseEight"
                                                            aria-expanded="false" aria-controls="collapseEight">
                                                            Ancho de banda
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Espectro de frecuencias a los que emite la antena. En los radares de subsuelo, normalmente 
                                                        el ancho de banda es del orden de la frecuencia central.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingNine">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseNine"
                                                            aria-expanded="false" aria-controls="collapseNine">
                                                            Ancho del lóbulo entre ceros
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseNine" class="collapse" aria-labelledby="headingNine" data-parent="#accordion">
                                                    <div class="card-body">
                                                       Distancia angular del diagrama de radiación entre las dos direcciones del espacio en las 
                                                       que el lóbulo principal alcanza el mínimo valor.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTen"
                                                            aria-expanded="false" aria-controls="collapseTen">
                                                            Anchura del lóbulo
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTen" class="collapse" aria-labelledby="headingTen" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Haz de 3 dB.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingEleven">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseEleven"
                                                            aria-expanded="false" aria-controls="collapseEleven">
                                                            Antena
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseEleven" class="collapse" aria-labelledby="headingEleven" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Parte del radar de subsuelo utilizada para emitir hacia el interior del medio la enetgía 
                                                        que les suministra la unidad de control en forma de potencia, con la direccionalidad y 
                                                        las características adecuadas a la aplicación deseada. También han de recibir la parte de 
                                                        energía que se refleja en las discontinuidades electromagnéticas del medio y regresa hacia 
                                                        la superficie.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwelve">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwelve"
                                                            aria-expanded="false" aria-controls="collapseTwelve">
                                                            Antenas alámbricas
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwelve" class="collapse" aria-labelledby="headingTwelve" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Construidas mediante hilos conductores que soportan las corrientes que dan lugar a los campos 
                                                        magnéticos radiados. La disposición de estos hilos puede ser variada. Las antenas de georradar 
                                                        suelen funcionar a base de una espira con forma de mariposa.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingThirteen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseThirteen"
                                                            aria-expanded="false" aria-controls="collapseThirteen">
                                                            Antenas biestáticas
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseThirteen" class="collapse" aria-labelledby="headingThirteen" data-parent="#accordion">
                                                    <div class="card-body">
                                                       Están formadas por dos módulos separados e independientes: un emisor y un receptor.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFourteen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFourteen"
                                                            aria-expanded="false" aria-controls="collapseFourteen">
                                                            Antenas de apertura
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFourteen" class="collapse" aria-labelledby="headingFourteen" data-parent="#accordion">
                                                    <div class="card-body">
                                                        La onda se genera mediante una disposición de campos que se excitan mediante guías de ondas. 
                                                        Suelen estar asociadas a un reflector y son las habituales en telecomunicaciones.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFiveteen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFiveteen"
                                                            aria-expanded="false" aria-controls="collapseFiveteen">
                                                            Antenas de media longitud de onda
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFiveteen" class="collapse" aria-labelledby="headingFiveteen" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Antenas con una espira que funciona como un dipolo y que emite una onda cuya longitud en el vacío 
                                                         es el doble de la longitud máxima de la espira.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSixteen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSixteen"
                                                            aria-expanded="false" aria-controls="collapseSixteen">
                                                            Antenas direccionales
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSixteen" class="collapse" aria-labelledby="headingSixteen" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Antenas que presentan direcciones privilegiadas de radiación.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSeventeen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSeventeen"
                                                            aria-expanded="false" aria-controls="collapseSeventeen">
                                                            Antenas isotrópicas
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSeventeen" class="collapse" aria-labelledby="headingSeventeen" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Antenas que radian en todas las direcciones del espacio por igual.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingEighteen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseEighteen"
                                                            aria-expanded="false" aria-controls="collapseEighteen">
                                                            Antenas monoestáticas
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseEighteen" class="collapse" aria-labelledby="headingEighteen" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Son antenas emisoras y receptoras de energía al mismo tiempo. La actuación de la antena se 
                                                         modifica mediante un conmutador o pueden realizarse las dos funciones porque la antena consta 
                                                         de un emisor y de un receptor independientes aunque siempre a distancia fija uno del otro.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingNineteen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseNineteen"
                                                            aria-expanded="false" aria-controls="collapseNineteen">
                                                            Arcillas
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseNineteen" class="collapse" aria-labelledby="headingNineteen" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Granos de suelo que tienen un diámetro medio inferior a las 2 μm. Un suelo formado por una mayor 
                                                         parte de sus partículas con tamaño inferior a este diámetro se dice que está formado por minerales arcillosos.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwenty">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwenty"
                                                            aria-expanded="false" aria-controls="collapseTwenty">
                                                            Área efectiva de una antena
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwenty" class="collapse" aria-labelledby="headingTwenty" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Área de captación de energía.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwentyone">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwentyone"
                                                            aria-expanded="false" aria-controls="collapseTwentyone">
                                                            Arenas
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwentyone" class="collapse" aria-labelledby="headingTwentyone" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Partículas de suelo con diámetro medio comprendido entre los 0.06 mm y los 2 mm.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwentytwo">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwentytwo"
                                                            aria-expanded="false" aria-controls="collapseTwentytwo">
                                                            Atenuación
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwentytwo" class="collapse" aria-labelledby="headingTwentytwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Disminución de la energía de una onda (y por lo tanto, también de su amplitud) durante 
                                                        la propagación por un medio. Generalmente, las principales causas de atenuación son la 
                                                        absorción del medio y la expansión geométrica del frente de ondas.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwentyThree">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwentyThree"
                                                            aria-expanded="false" aria-controls="collapseTwentyThree">
                                                            Atenuación específica
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwentyThree" class="collapse" aria-labelledby="headingTwentyThree" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Grado de atenuación de una onda por unidad de longitud.

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                   
                                </div>
                                <div class="tab-pane p-3" id="home-2" role="tabpanel">
                                    <p class="mb-0">
                                        NO HAY INFORMACIÓN IMPORTANTE QUE MOSTRAR AQUI
                                    </p>
                                </div>
                                <div class="tab-pane p-3" id="home-3" role="tabpanel">
                                    <p class="mb-0">
                                        <div id="accordion">
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingOne">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a data-toggle="collapse" data-parent="#accordion"
                                                            href="#collapseOne" aria-expanded="true"
                                                            aria-controls="collapseOne" class="text-dark">
                                                            Cementicia
                                                        </a>
                                                    </h5>
                                                </div>
            
                                                <div id="collapseOne" class="collapse show"
                                                        aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Mortero utilizado en época romana que se utilizaba como relleno 
                                                        de los muros. Se trata de una argamasa realizada con cal, arena, 
                                                        cascotes y pequeñas piedras.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwo"
                                                            aria-expanded="false" aria-controls="collapseTwo">
                                                            Cavea
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Gradas del teatro romano.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingThree">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseThree"
                                                            aria-expanded="false" aria-controls="collapseThree">
                                                            Coeficiente de reflexión
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Factor que proporciona el porcentaje de energía que se refleja en una discontinuidad en 
                                                         relación a la energía que incide sobre ella.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFour">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFour"
                                                            aria-expanded="false" aria-controls="collapseFour">
                                                            Coeficiente de transmisión
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Factor que proporciona el porcentaje de energía de una señal incidente que se refracta y, 
                                                        por lo tanto, se transmite hacia el interior del segundo medio.                                                    
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFive">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFive"
                                                            aria-expanded="false" aria-controls="collapseFive">
                                                            Composición
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Porcentaje de cada uno de los elementos minerales y orgánicos que forman parte del suelo.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSix">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSix"
                                                            aria-expanded="false" aria-controls="collapseSix">
                                                            Composición química de un medio
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Composición mineralógica. Abundancia de sus elementos componentes.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSeven">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSeven"
                                                            aria-expanded="false" aria-controls="collapseSeven">
                                                            Conductividad efectiva
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Suma de los efectos de la componente real de la conductividad compleja y con el efecto de 
                                                        la componente imaginaria de la permitividad dieléctrica compleja, que genera un campo 
                                                        eléctrico en fase con el campo externo. Corrientes en fase con el campo externo.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingEight">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseEight"
                                                            aria-expanded="false" aria-controls="collapseEight">
                                                            Conductividad estática
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Cuando solo existen efectos de la parte real de la conductividad. Amplitud de la corriente 
                                                        en fase con la intensidad del campo eléctrico externo.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingNine">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseNine"
                                                            aria-expanded="false" aria-controls="collapseNine">
                                                            Conductividad
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseNine" class="collapse" aria-labelledby="headingNine" data-parent="#accordion">
                                                    <div class="card-body">
                                                       Medida de la respuesta de las cargas libres de un medio en presencia de un campo eléctrico externo.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTen"
                                                            aria-expanded="false" aria-controls="collapseTen">
                                                            Conductores
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTen" class="collapse" aria-labelledby="headingTen" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Materiales que presentan una conductividad superior a 105 S/m.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingEleven">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseEleven"
                                                            aria-expanded="false" aria-controls="collapseEleven">
                                                            Constante de fase
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseEleven" class="collapse" aria-labelledby="headingEleven" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Parte imaginaria de la constante de propagación.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwelve">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwelve"
                                                            aria-expanded="false" aria-controls="collapseTwelve">
                                                            Constante dieléctrica
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwelve" class="collapse" aria-labelledby="headingTwelve" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Permitividad dieléctrica. Recibe el nombre de constante porque para un mismo medio (misma }
                                                        mezcla de materiales) en unas mismas condiciones físicas (porosidad, saturación y temperatura, 
                                                        principalmente) es un valor constante característico.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingThirteen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseThirteen"
                                                            aria-expanded="false" aria-controls="collapseThirteen">
                                                            Constante de propagación
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseThirteen" class="collapse" aria-labelledby="headingThirteen" data-parent="#accordion">
                                                    <div class="card-body">
                                                       Factor de decaimiento de la intensidad del campo electromagnético. Número de onda complejo.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFourteen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFourteen"
                                                            aria-expanded="false" aria-controls="collapseFourteen">
                                                            Curvas granulométricas
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFourteen" class="collapse" aria-labelledby="headingFourteen" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Resultado de un análisis granulométrico. Proporciona el porcentaje de partículas de cada tamaño 
                                                        presente en un suelo mediante una gráfica que muestra el tamaño frente al porcentaje.

                                                    </div>
                                                </div>
                                            </div>
                                        
                                        </div>
                                 
                                </div>
                                <div class="tab-pane p-3" id="home-4" role="tabpanel">
                                    <p class="mb-0">
                                        <div id="accordion">
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingOne">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a data-toggle="collapse" data-parent="#accordion"
                                                            href="#collapseOne" aria-expanded="true"
                                                            aria-controls="collapseOne" class="text-dark">
                                                            Densidad
                                                        </a>
                                                    </h5>
                                                </div>
            
                                                <div id="collapseOne" class="collapse show"
                                                        aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Relación entre la masa de un determinado volumen de un 
                                                        cuerpo y la masa del mismo volumen de agua. Para los 
                                                        gases se utiliza como referencia la masa del mismo 
                                                        volumen de aire.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwo"
                                                            aria-expanded="false" aria-controls="collapseTwo">
                                                            Diagrama de radiación
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Representaciones gráficas del frente de ondas que radia una antena en las diferentes direcciones del espacio.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingThree">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseThree"
                                                            aria-expanded="false" aria-controls="collapseThree">
                                                            Difracción
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Efecto que se produce cuando la energía incide en un único elemento de tamaño relativamente 
                                                         grande de manera que las condiciones del medio varían bruscamente de un punto a otro.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFour">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFour"
                                                            aria-expanded="false" aria-controls="collapseFour">
                                                            Difracción de rayos X
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Método utilizado para identificar los minerales cristalinos formadores de un medio, 
                                                        existentes en un porcentaje superior al 1%.
                                                        Consiste en la generación del espectro de rayos X mediante la colisión de electrones 
                                                        energéticos (entre 10 y 100 KeV) contra una muestra del medio analizado.
                                                    
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFive">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFive"
                                                            aria-expanded="false" aria-controls="collapseFive">
                                                            Directividad de una antena
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Parámetro que caracteriza a las antenas direccionales. Cociente de la densidad de 
                                                         potencia que se tiene a una cierta distancia de la antena direccional emisora y la 
                                                         densidad de potencia que se tendría en el mismo punto si la antena emisora fuese 
                                                         isotrópica y radiase la misma potencia que la direccional.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSix">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSix"
                                                            aria-expanded="false" aria-controls="collapseSix">
                                                            Dispersión cromática
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Distorsión de la forma del pulso a consecuencia de las variaciones de la velocidad 
                                                        de grupo, ocasionadas por la dependencia de la velocidad de fase con la longitud de onda.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSeven">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSeven"
                                                            aria-expanded="false" aria-controls="collapseSeven">
                                                            Dispersión geométrica
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Atenuación por expansión del frente de ondas durante la propagación.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingEight">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseEight"
                                                            aria-expanded="false" aria-controls="collapseEight">
                                                            Dispersión
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Distribución aleatoria de la energía cuando incide sobre objetos de dimensiones del orden 
                                                        de la longitud de onda o inferior.
                                                    </div>
                                                </div>
                                            </div>
                                            
                                        </div>
                                 
                                </div>
                                <div class="tab-pane p-3" id="home-5" role="tabpanel">
                                    <p class="mb-0">
                                       <div id="accordion">
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingOne">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a data-toggle="collapse" data-parent="#accordion"
                                                            href="#collapseOne" aria-expanded="true"
                                                            aria-controls="collapseOne" class="text-dark">
                                                            Ecuación de transmisión
                                                        </a>
                                                    </h5>
                                                </div>
            
                                                <div id="collapseOne" class="collapse show"
                                                        aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Balance de potencias entre la potencia radiada por una antena emisora y la captada por una receptora.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwo"
                                                            aria-expanded="false" aria-controls="collapseTwo">
                                                            Ecuación del radar
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Caso particular de la ecuación de transmisión en el que se analiza el balance de potencias 
                                                        que tiene lugar si la antena receptora capta la energía transmitida por la emisora después 
                                                        de sufrir una reflexión en un objeto.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingThree">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseThree"
                                                            aria-expanded="false" aria-controls="collapseThree">
                                                            Eficiencia de la antena
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Parámetro que relaciona la ganancia con la directividad de una antena. Da una estimación 
                                                        de las pérdidas de potencia que tienen lugar en el interior de la antena.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFour">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFour"
                                                            aria-expanded="false" aria-controls="collapseFour">
                                                            Ensayo granulométrico por sedimentación
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Análisis granulométricos de partículas de tamaño inferior a 0.074 mm basado en la velocidad 
                                                        de sedimentación en el interior de un líquido, considerando la ley de Stokes que relaciona 
                                                        esta velocidad con el diámetro de la partícula.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFive">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFive"
                                                            aria-expanded="false" aria-controls="collapseFive">
                                                            Ensayo granulométrico por tamizado
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
                                                    <div class="card-body">
                                                       Utilización de tamices de tamaño normalizado para realizar el análisis granulométrico de 
                                                       suelos, considerando partículas de tamaño superior a los 0.074 mm (diámetro del tamiz más fino).

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSix">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSix"
                                                            aria-expanded="false" aria-controls="collapseSix">
                                                            Error aparente
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Residuo.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSeven">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSeven"
                                                            aria-expanded="false" aria-controls="collapseSeven">
                                                            Errores de apreciación
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Se trata de un tipo de error casual, asociado a la mínima división de la escala de lectura del aparato utilizado.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingEight">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseEight"
                                                            aria-expanded="false" aria-controls="collapseEight">
                                                            Errores casuales
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Son errores aleatorios asociados a una medida, cuya causa no se puede determinar. Siempre 
                                                        están presentes en la medida de cualquier magnitud física. Cuando menor es el error casual 
                                                        asociado a una medida, mayor es la precisión de ésta.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingNine">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseNine"
                                                            aria-expanded="false" aria-controls="collapseNine">
                                                            Error cuadrático medio
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseNine" class="collapse" aria-labelledby="headingNine" data-parent="#accordion">
                                                    <div class="card-body">
                                                       Es el error casual que se supone que se ha cometido en cada una de las medidas de una cierta magnitud.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTen"
                                                            aria-expanded="false" aria-controls="collapseTen">
                                                            Error estándar (s)
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTen" class="collapse" aria-labelledby="headingTen" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Es el error cuadrático medio del promedio de una serie de medidas de una variable. 
                                                        Se puede calcular cuando el número de medidas realizadas de la misma variable es 
                                                        mayor a 10. Proporciona una estimación concreta de la probabilidad de que un valor 
                                                        promedio de una serie de medidas de una cierta magnitud difiera en una cierta 
                                                        cantidad del valor verdadero de dicha magnitud.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingEleven">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseEleven"
                                                            aria-expanded="false" aria-controls="collapseEleven">
                                                            Error ilegítimo
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseEleven" class="collapse" aria-labelledby="headingEleven" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Se trata de un error asociado a una medida que no es casual ni sistemático.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwelve">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwelve"
                                                            aria-expanded="false" aria-controls="collapseTwelve">
                                                            Error máximo
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwelve" class="collapse" aria-labelledby="headingTwelve" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Se utiliza cuando no se puede efectuar una estimación del error estadístico porque se ha 
                                                        realizado un número de medidas inferior a 10. Se calcula como la diferencia entre las dos 
                                                        medidas extremas obtenidas, dividida por dos.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingThirteen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseThirteen"
                                                            aria-expanded="false" aria-controls="collapseThirteen">
                                                            Error relativo
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseThirteen" class="collapse" aria-labelledby="headingThirteen" data-parent="#accordion">
                                                    <div class="card-body">
                                                       El error relativo a una medida es el cociente entre el error absoluto asociado a esta medida 
                                                       dividido por el valor de la medida misma.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFourteen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFourteen"
                                                            aria-expanded="false" aria-controls="collapseFourteen">
                                                            Error sistemático
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFourteen" class="collapse" aria-labelledby="headingFourteen" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Son errores que se repiten constantemente en el transcurso de un experimento y afectan de igual 
                                                        manera a todas las medidas realizadas o a toda una serie de estas medidas. Como están presentes 
                                                        en todos los resultados, afectan al resultado final siempre en un mismo sentido.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFiveteen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFiveteen"
                                                            aria-expanded="false" aria-controls="collapseFiveteen">
                                                            Euripus
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFiveteen" class="collapse" aria-labelledby="headingFiveteen" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Canal de evacuación para aguas pluviales que gira entorno de la orchestra, al pie de la cavea.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSixteen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSixteen"
                                                            aria-expanded="false" aria-controls="collapseSixteen">
                                                            Exactitud
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSixteen" class="collapse" aria-labelledby="headingSixteen" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Una medida es más exacta cuanto menores son los errores sistemáticos.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSeventeen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSeventeen"
                                                            aria-expanded="false" aria-controls="collapseSeventeen">
                                                            Expansión geométrica
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSeventeen" class="collapse" aria-labelledby="headingSeventeen" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Atenuación de la señal que se produce por el avance del frente de ondas. Para una onda interna 
                                                        esta atenuación es del orden de r-1 para la amplitud y de r-2 para la energía.

                                                    </div>
                                                </div>
                                            </div>
                                            
                                        </div>
                                   
                                </div>
                                <div class="tab-pane p-3" id="home-6" role="tabpanel">
                                    <p class="mb-0">
                                        <div id="accordion">
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingOne">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a data-toggle="collapse" data-parent="#accordion"
                                                            href="#collapseOne" aria-expanded="true"
                                                            aria-controls="collapseOne" class="text-dark">
                                                            Factor de atenuación
                                                        </a>
                                                    </h5>
                                                </div>
            
                                                <div id="collapseOne" class="collapse show"
                                                        aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Parte real de la constante de propagación. Proporciona el 
                                                        grado de disminución de la amplitud de la onda durante su 
                                                        propagación debido a la absorción del medio.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwo"
                                                            aria-expanded="false" aria-controls="collapseTwo">
                                                            Fases de un suelo
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Se considera que un suelo está formado por tres fases: la fase sólida (formada por los 
                                                        granos), la fase líquida (formada por el fluido intersticial) y la fase gaseosa (el aire 
                                                        que ocupa parte o todo el volumen de poros cuando el suelo está parcialmente saturado o seco).
                                                        <br>
                                                        El volumen total del suelo (VT) es la suma del volumen de agua (Vw), del volumen de aire (Va) 
                                                        y del volumen de sólido (Vs), como se puede ver esquematizado en la figura. Al peso del agua 
                                                        se le llama Ww y al del grano Ws. El peso total de la muestra de suelo es WT = Ww + Ws.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingThree">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseThree"
                                                            aria-expanded="false" aria-controls="collapseThree">
                                                            Fisuras
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Son las aperturas de un elemento constructivo que afectan únicamente a su superficie o a 
                                                         los elementos de recubrimiento de la estructura.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFive">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFive"
                                                            aria-expanded="false" aria-controls="collapseFive">
                                                            Fluido intersticial
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
                                                    <div class="card-body">
                                                          Fluido (normalmente agua) presente en los poros de un medio.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSix">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSix"
                                                            aria-expanded="false" aria-controls="collapseSix">
                                                            Fluido libre
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Fluido que puede desplazarse por los poros del medio comunicados entre sí, en función 
                                                        de la atracción gravitatoria que sufre.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSeven">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSeven"
                                                            aria-expanded="false" aria-controls="collapseSeven">
                                                            Fracción de volumen de un material
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Porcentaje de ese material en el medio.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingEight">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseEight"
                                                            aria-expanded="false" aria-controls="collapseEight">
                                                            Frecuencia central
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Frecuencia a la que la amplitud es mayor. Se trata de aquella que se sitúa en el centro de la banda de emisión de la antena.

                                                    </div>
                                                </div>
                                            </div>
                                            
                                        </div>
                                  
                                </div>
                                <div class="tab-pane p-3" id="home-7" role="tabpanel">
                                    <p class="mb-0">
                                        <div id="accordion">
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingOne">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a data-toggle="collapse" data-parent="#accordion"
                                                            href="#collapseOne" aria-expanded="true"
                                                            aria-controls="collapseOne" class="text-dark">
                                                            Ganancia de un registro
                                                        </a>
                                                    </h5>
                                                </div>
            
                                                <div id="collapseOne" class="collapse show"
                                                        aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Amplificación que se aplica al radargrama durante la adquisición de datos o durante su procesado.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwo"
                                                            aria-expanded="false" aria-controls="collapseTwo">
                                                            Ganancia de una antena
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Cociente entre la potencia máxima radiada por la antena por unidad de ángulo sólido y 
                                                        la potencia total distribuida por la antena en todo el espacio.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingThree">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseThree"
                                                            aria-expanded="false" aria-controls="collapseThree">
                                                            Grado de atenuación
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Cociente entre las amplitudes de las oscilaciones de la onda en dos puntos separados una determinada distancia.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFive">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFive"
                                                            aria-expanded="false" aria-controls="collapseFive">
                                                            Grado de saturación (Sa)
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
                                                    <div class="card-body">
                                                          Es la relación entre el volumen de agua (Vw) y el volumen de huecos (VH).
                                                          <br>
                                                          S  = Vw/VH = Ww VH γw
                                                          <br>
                                                          Siendo Ww el peso del agua y γw el peso específico del agua.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSix">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSix"
                                                            aria-expanded="false" aria-controls="collapseSix">
                                                            Granulometría de un suelo
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Relación de los distintos tamaños de partículas que forman un suelo. Diámetro medio 
                                                        de las partículas que forman la fase sólida de un suelo.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSeven">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSeven"
                                                            aria-expanded="false" aria-controls="collapseSeven">
                                                            Gravas
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Partículas de suelo con tamaño superior a los 2 mm. Se dividen en: gravilla (con diámetro 
                                                        entre 2 mm y 40 mm), gravas (diámetro entre 40 mm y 10 cm), bolos (entre 10 cm y 30 cm) 
                                                        y bloques (tamaños superiores a 30 cm).

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingEight">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseEight"
                                                            aria-expanded="false" aria-controls="collapseEight">
                                                            Grietas
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Son aquellas aperturas de un elemento constructivo que afectan a su totalidad.
                                                    </div>
                                                </div>
                                            </div>
                                            
                                        </div>
                                  
                                </div>
                                <div class="tab-pane p-3" id="home-8" role="tabpanel">
                                    <p class="mb-0">
                                        <div id="accordion">
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingOne">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a data-toggle="collapse" data-parent="#accordion"
                                                            href="#collapseOne" aria-expanded="true"
                                                            aria-controls="collapseOne" class="text-dark">
                                                            Hastial
                                                        </a>
                                                    </h5>
                                                </div>
            
                                                <div id="collapseOne" class="collapse show"
                                                        aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Cara lateral de una excavación.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwo"
                                                            aria-expanded="false" aria-controls="collapseTwo">
                                                            Haz de 3 dB
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Distancia angular entre las direcciones del diagrama de radiación donde la potencia es 
                                                        la mitad del valor máximo. Esta potencia equivale aproximadamente a 3 dB menos que el 
                                                        valor máximo de la potencia.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingThree">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseThree"
                                                            aria-expanded="false" aria-controls="collapseThree">
                                                            Hipérbolas debidas al ancho de la antena
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Eventos hiperbólicos de los radargramas que se producen en eventos de tamaño finito o en 
                                                         discontinuidades electromagnéticas laterales. Aunque similares a las hipérbolas de difracción 
                                                         de sísmica no se originan por el mismo fenómeno, sino a consecuencia de la anchura del haz de 
                                                         emisión de la antena, que permite detectar el elemento antes de alcanzar su vertical.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFive">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFive"
                                                            aria-expanded="false" aria-controls="collapseFive">
                                                            Huella de la antena
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
                                                    <div class="card-body">
                                                          Área de la superficie iluminada por la emisión electromagnética en la que se produce 
                                                          la reflexión de la mayor parte de la energía incidente. Queda determinada por la primera 
                                                          zona de Fresnel.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSix">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSix"
                                                            aria-expanded="false" aria-controls="collapseSix">
                                                            Humedad (w)
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Relación entre el peso del agua (Ww) y el peso del suelo seco (Ws). Porcentaje de agua 
                                                        en peso contenida en el suelo.

                                                    </div>
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </p>
                                </div>
                                <div class="tab-pane p-3" id="home-9" role="tabpanel">
                                    <p class="mb-0">
                                        <div id="accordion">
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingOne">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a data-toggle="collapse" data-parent="#accordion"
                                                            href="#collapseOne" aria-expanded="true"
                                                            aria-controls="collapseOne" class="text-dark">
                                                            Impedancia de un campo electromagnético
                                                        </a>
                                                    </h5>
                                                </div>
            
                                                <div id="collapseOne" class="collapse show"
                                                        aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Cociente entre el campo eléctrico y el campo magnético.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwo"
                                                            aria-expanded="false" aria-controls="collapseTwo">
                                                            Índice de poros (e)
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Relación entre el volumen de huecos (VH) y el volumen de sólido (VS).

                                                    </div>
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </p>
                                </div>
                                <div class="tab-pane p-3" id="home-10" role="tabpanel">
                                    <p class="mb-0">
                                        NO HAY INFORMACIÓN IMPORTANTE QUE MOSTRAR AQUI
                                    </p>
                                </div>
                                <div class="tab-pane p-3" id="home-11" role="tabpanel">
                                    <p class="mb-0">
                                        NO HAY INFORMACIÓN IMPORTANTE QUE MOSTRAR AQUI
                                    </p>
                                </div>
                                <div class="tab-pane p-3" id="home-12" role="tabpanel">
                                    <p class="mb-0">
                                        <div id="accordion">
                                        <div class="card mb-0">
                                                <div class="card-header" id="headingOne">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a data-toggle="collapse" data-parent="#accordion"
                                                            href="#collapseOne" aria-expanded="true"
                                                            aria-controls="collapseOne" class="text-dark">
                                                            Limos
                                                        </a>
                                                    </h5>
                                                </div>
            
                                                <div id="collapseOne" class="collapse show"
                                                        aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Partículas de suelo con diámetro medio comprendido entre los 0.06 mm y los 0.002 mm.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwo"
                                                            aria-expanded="false" aria-controls="collapseTwo">
                                                           Lóbulo principal
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Zona del espacio donde la radiación es máxima.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwo"
                                                            aria-expanded="false" aria-controls="collapseTwo">
                                                            Lóbulos secundarios
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Zonas que rodean al lóbulo principal y que presentan una amplitud menor.

                                                    </div>
                                                </div>
                                            </div>
                                    
                                        </div>
                                    </p>
                                </div>
                                <div class="tab-pane p-3" id="home-13" role="tabpanel">
                                    <p class="mb-0">
                                        <div id="accordion">
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingOne">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a data-toggle="collapse" data-parent="#accordion"
                                                            href="#collapseOne" aria-expanded="true"
                                                            aria-controls="collapseOne" class="text-dark">
                                                            Materiales de pequeñas pérdidas
                                                        </a>
                                                    </h5>
                                                </div>
            
                                                <div id="collapseOne" class="collapse show"
                                                        aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Materiales con un valor pequeño del factor de pérdidas. Son materiales dieléctricos o casi dieléctricos.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwo"
                                                            aria-expanded="false" aria-controls="collapseTwo">
                                                            Matriz
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                       Material sólido de un medio.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingThree">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseThree"
                                                            aria-expanded="false" aria-controls="collapseThree">
                                                            Medida directa
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Evaluación de un determinado parámetro a partir de su comparación con una unidad patrón. 
                                                         Se trata de una medida efectuada por comparación con el patrón escogido como unidad de 
                                                         medida. Los números que dan la medida dependen de la unidad patrón utilizada, que se puede 
                                                         seleccionar de forma totalmente arbitraria.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFour">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFour"
                                                            aria-expanded="false" aria-controls="collapseFour">
                                                            Medida indirecta
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Determinación de una magnitud que no se puede analizar por comparación con un patrón pero que 
                                                        depende de una o más variables que se pueden medir directamente. Su valor se obtiene efectuando 
                                                        medidas directas de las variables implicadas.
                                                 
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFive">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFive"
                                                            aria-expanded="false" aria-controls="collapseFive">
                                                            Medio material
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Elemento compuesto por tres fases: fase sólida (formada por la parte mineral y la 
                                                         orgánica sólida), fase líquida (fluido intersticial) y fase gaseosa (normalmente 
                                                         es el aire el gas que llena los poros no saturados).

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSix">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSix"
                                                            aria-expanded="false" aria-controls="collapseSix">
                                                            Medio opaco
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Medio muy absorbente, que atenúa la energía emitida muy rápidamente y permite una profundidad de estudio muy pequeña.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSeven">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSeven"
                                                            aria-expanded="false" aria-controls="collapseSeven">
                                                            Medio transparente
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Medio no absorbente o muy poco absorbente, que permite el paso de casi toda la energía emitida.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingEight">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseEight"
                                                            aria-expanded="false" aria-controls="collapseEight">
                                                            Microondas
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Frecuencias de las bandas de UHF, SHF y EHF. Entre 300 MHz y 300 GHz.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingNine">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseNine"
                                                            aria-expanded="false" aria-controls="collapseNine">
                                                            Microporosidad
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseNine" class="collapse" aria-labelledby="headingNine" data-parent="#accordion">
                                                    <div class="card-body">
                                                       Poros de diámetro medio inferior a 1mμ.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTen"
                                                            aria-expanded="false" aria-controls="collapseTen">
                                                            Minerales arcillosos
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTen" class="collapse" aria-labelledby="headingTen" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Granos minerales de tamaño inferior a 2 μm.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingEleven">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseEleven"
                                                            aria-expanded="false" aria-controls="collapseEleven">
                                                            Muestra
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseEleven" class="collapse" aria-labelledby="headingEleven" data-parent="#accordion">
                                                    <div class="card-body">
                                                        En estadística, el número de medidas realizadas sobre una misma variable para obtener su valor promedio.

                                                    </div>
                                                </div>
                                            </div>
                                        
                                        </div>
                                    </p>
                                </div>
                                <div class="tab-pane p-3" id="home-14" role="tabpanel">
                                    <p class="mb-0">
                                        NO HAY INFORMACIÓN IMPORTANTE QUE MOSTRAR AQUI
                                    </p>
                                </div>
                                <div class="tab-pane p-3" id="home-15" role="tabpanel">
                                    <p class="mb-0">
                                        NO HAY INFORMACIÓN IMPORTANTE QUE MOSTRAR AQUI
                                    </p>
                                </div>
                                <div class="tab-pane p-3" id="home-16" role="tabpanel">
                                    <p class="mb-0">
                                        <div id="accordion">
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingOne">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a data-toggle="collapse" data-parent="#accordion"
                                                            href="#collapseOne" aria-expanded="true"
                                                            aria-controls="collapseOne" class="text-dark">
                                                            Orchestra
                                                        </a>
                                                    </h5>
                                                </div>
            
                                                <div id="collapseOne" class="collapse show"
                                                        aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Zona plana en la base de un teatro, comprendida entre las gradas y el escenario. 
                                                        En la época griega era la zona donde declamaban los actores. En los teatros 
                                                        romanos, esta zona, en la que inicialmente danzaba el coro, acabó siendo reservada 
                                                        para senadores y otras personalidades, utilizando los actores la zona denominada proscaenium.

                                                    </div>
                                                </div>
                                            </div>
                                            
                                            
                                        </div>
                                    </p>
                                </div>
                                <div class="tab-pane p-3" id="home-17" role="tabpanel">
                                    <p class="mb-0">
                                        <div id="accordion">
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingOne">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a data-toggle="collapse" data-parent="#accordion"
                                                            href="#collapseOne" aria-expanded="true"
                                                            aria-controls="collapseOne" class="text-dark">
                                                            Parámetros electromagnéticos
                                                        </a>
                                                    </h5>
                                                </div>
            
                                                <div id="collapseOne" class="collapse show"
                                                        aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Parámetros que definen el medio electromagnéticamente: conductividad, 
                                                        permitividad dieléctrica y permeabilidad magnética.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwo"
                                                            aria-expanded="false" aria-controls="collapseTwo">
                                                            Pérdida en el espacio libre
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Pérdida de potencia que tiene lugar entre la transmisión y la recepción de la señal si 
                                                        las dos antenas involucradas son isotrópicas.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingThree">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseThree"
                                                            aria-expanded="false" aria-controls="collapseThree">
                                                            Permeabilidad magnética
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Capacidad de imanación de un medio en presencia de un campo magnético externo. 
                                                        Constante de proporcionalidad entre la intensidad del campo magnético externo y la inducción magnética.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFour">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFour"
                                                            aria-expanded="false" aria-controls="collapseFour">
                                                            Permitividad dieléctrica
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Capacidad de polarización de un medio en presencia de un campo eléctrico externo. 
                                                        Constante de proporcionalidad entre el campo eléctrico externo aplicado y el desplazamiento eléctrico.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFive">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFive"
                                                            aria-expanded="false" aria-controls="collapseFive">
                                                            Permitividad efectiva
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Efecto de la componente real de la permitividad diéléctrica compleja junto al efecto 
                                                        de las cargas libres determinado por la parte imaginaria de la conductividad compleja. 
                                                        Corrientes en desfase con el campo externo. Proporciona una estimación de la capacidad 
                                                        de polarización de un medio en presencia de un campo electromagnético.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSix">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSix"
                                                            aria-expanded="false" aria-controls="collapseSix">
                                                            Peso del agua (Ww)
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Peso total del agua que hay en un suelo. Se puede definir como el producto del grado 
                                                        de saturación (Sa) por la porosidad (n) y el peso específico del agua (γw).

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSeven">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSeven"
                                                            aria-expanded="false" aria-controls="collapseSeven">
                                                            Peso del suelo seco (Ws)
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Es el peso de la parte sólida del suelo. Se obtiene con el producto de (1-n), que 
                                                        proporciona el porcentaje de suelo que no son poros, por el peso específico del sólido (γs). 
                                                        Donde n es la porosidad.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingEight">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseEight"
                                                            aria-expanded="false" aria-controls="collapseEight">
                                                            Peso específico
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Relación entre el volumen total de la muestra y su peso.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingNine">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseNine"
                                                            aria-expanded="false" aria-controls="collapseNine">
                                                            Peso específico de la parte sólida (o del grano) (gs)
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseNine" class="collapse" aria-labelledby="headingNine" data-parent="#accordion">
                                                    <div class="card-body">
                                                       Es el peso específico de las partículas que forman el suelo. Es el peso del sólido (Ws) 
                                                       dividido por el volumen de sólido (Vs).

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTen"
                                                            aria-expanded="false" aria-controls="collapseTen">
                                                            Peso específico aparente del suelo húmedo (g’)
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTen" class="collapse" aria-labelledby="headingTen" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Es el peso específico de la muestra de suelo cuando parte de los huecos están parcialmente 
                                                        llenos de agua. Se trata de la expresión más general del peso específico de la muestra 
                                                        excepto en el caso de tratarse de suelo sumergido.
                                                        Siendo WT el peso total de la muestra; VT el volumen total de la muestra; Ws el peso del sólido y Ww el peso del agua.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingEleven">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseEleven"
                                                            aria-expanded="false" aria-controls="collapseEleven">
                                                            Peso específico aparente del suelo saturado (gsat)
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseEleven" class="collapse" aria-labelledby="headingEleven" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Es el peso específico de la muestra de suelo cuando todos los huecos están llenos de agua.
                                                        Siendo WT el peso total de la muestra; VT el volumen total de la muestra; Ws el peso del sólido; 
                                                        Ww el peso del agua y γw el peso específico del agua.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwelve">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwelve"
                                                            aria-expanded="false" aria-controls="collapseTwelve">
                                                            Peso específico de la muestra (gn)
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwelve" class="collapse" aria-labelledby="headingTwelve" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Relación entre el peso total de la muestra de suelo (WT=Ws+Ww) y su volumen total (VT). 
                                                        Siendo Ws el peso del sólido; Ww el peso del agua y w la humedad.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingThirteen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseThirteen"
                                                            aria-expanded="false" aria-controls="collapseThirteen">
                                                            Porosidad (n)
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseThirteen" class="collapse" aria-labelledby="headingThirteen" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Relación entre el volumen de huecos (VH) y el volumen total (VT). Proporción de huecos de un medio. 
                                                        Determina el porcentaje del volumen de un medio que no está relleno de material sólido.
                                                        Siendo γn el peso específico aparente de la muestra; γs el peso específico del sólido; w la humedad y e el índice de huecos.


                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFourteen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFourteen"
                                                            aria-expanded="false" aria-controls="collapseFourteen">
                                                            Porosidad efectiva
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFourteen" class="collapse" aria-labelledby="headingFourteen" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Porcentaje del volumen de poros conectados entre sí.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFiveteen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFiveteen"
                                                            aria-expanded="false" aria-controls="collapseFiveteen">
                                                            Porosidad residual
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFiveteen" class="collapse" aria-labelledby="headingFiveteen" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Volumen de poros aislados.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSixteen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSixteen"
                                                            aria-expanded="false" aria-controls="collapseSixteen">
                                                            Precisión
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSixteen" class="collapse" aria-labelledby="headingSixteen" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Una medida es más precisa que otra cuando sus errores causales son menores.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSeventeen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSeventeen"
                                                            aria-expanded="false" aria-controls="collapseSeventeen">
                                                            Profundidad nominal de penetración
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSeventeen" class="collapse" aria-labelledby="headingSeventeen" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Profundidad a la cual la energía de la onda ha disminuido en un factor de 1/e (aproximadamente un 37% del valor inicial).

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingEighteen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseEighteen"
                                                            aria-expanded="false" aria-controls="collapseEighteen">
                                                            Profundidad pelicular de penetración
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseEighteen" class="collapse" aria-labelledby="headingEighteen" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Profundidad nominal de penetración. Viene del inglés “skin dept”.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingNineteen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseNineteen"
                                                            aria-expanded="false" aria-controls="collapseNineteen">
                                                            Praecintio
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseNineteen" class="collapse" aria-labelledby="headingNineteen" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Pretil más o menos alto que divide la cavea en diferentes zonas.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwenty">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwenty"
                                                            aria-expanded="false" aria-controls="collapseTwenty">
                                                            Prima sedes (gradas senatoriales)
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwenty" class="collapse" aria-labelledby="headingTwenty" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Gradas principales incluidas en el interior del círculo de la orchestra, formadas por asientos 
                                                        fijos y destinadas a personajes importantes.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwentyone">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwentyone"
                                                            aria-expanded="false" aria-controls="collapseTwentyone">
                                                            Prosaeniume (proscenio)
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwentyone" class="collapse" aria-labelledby="headingTwentyone" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Zona elevada sobre el plano de la orquesta. Escenario. Originariamente se refería a una platarforma 
                                                        de madera colocada delante de la escena.

                                                    </div>
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </p>
                                </div>
                                <div class="tab-pane p-3" id="home-18" role="tabpanel">
                                    <p class="mb-0">
                                        NO HAY INFORMACIÓN IMPORTANTE QUE MOSTRAR AQUI
                                    </p>
                                </div>
                                <div class="tab-pane p-3" id="home-19" role="tabpanel">
                                    <p class="mb-0">
                                        <div id="accordion">
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingOne">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a data-toggle="collapse" data-parent="#accordion"
                                                            href="#collapseOne" aria-expanded="true"
                                                            aria-controls="collapseOne" class="text-dark">
                                                            Radargrama
                                                        </a>
                                                    </h5>
                                                </div>
            
                                                <div id="collapseOne" class="collapse show"
                                                        aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Registro de radar de subsuelo, formado por varias trazas.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwo"
                                                            aria-expanded="false" aria-controls="collapseTwo">
                                                            Radiofrecuencias
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Comprende las bandas de MF, HF y VHF. Entre 0.3 MHz y 300 MHz.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingThree">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseThree"
                                                            aria-expanded="false" aria-controls="collapseThree">
                                                            Rango de la traza
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Tiempo máximo de registro, equivalente a la longitud temporal del radargrama (o de una traza).

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFour">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFour"
                                                            aria-expanded="false" aria-controls="collapseFour">
                                                            Rango del radargrama
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Rango de la traza. Longitud de la ventana temporal del registro. Tiempo de registro.
                                                  
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFive">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFive"
                                                            aria-expanded="false" aria-controls="collapseFive">
                                                            Rango del registro
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
                                                    <div class="card-body">
                                                          Rango de la traza.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSix">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSix"
                                                            aria-expanded="false" aria-controls="collapseSix">
                                                            Rango del radar
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Máxima penetración que puede alcanzar un sistema de radar.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSeven">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSeven"
                                                            aria-expanded="false" aria-controls="collapseSeven">
                                                            Rayos X
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Descubiertos por Röentgen en 1895 cuando trabajaba con luz emitida por el gas interno residual 
                                                        en un tubo de rayos catódicos, abarcan desde el ultravioleta lejano hasta los rayos γ, de tal 
                                                        manera que comprenden la zona del espectro electromagnético situado entre los 3×1017 Hz y los 5×1019 Hz. 
                                                        Su longitud de onda queda situada entre 10-9 m y 6×10-12 m. Son altamente energéticos, presentando 
                                                        valores entre 1.2 KeV y 200 KeV. Se generan en las transiciones de los electrones internos de los átomos 
                                                        y por frenado de partículas rápidas cargadas. Se detectan por la elevada ionización que producen en la 
                                                        materia o por efecto Compton (Cabrera et al., 1993).
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingEight">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseEight"
                                                            aria-expanded="false" aria-controls="collapseEight">
                                                            Reflector
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Superficie donde se produce la reflexión de parte de la energía que incide. Estas 
                                                        superficies son discontinuidades bruscas de uno o varios parámetros electromagnéticos y, 
                                                        a menudo, separan diferentes unidades materiales de un medio.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingNine">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseNine"
                                                            aria-expanded="false" aria-controls="collapseNine">
                                                            Relación de lóbulo principal a secundario
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseNine" class="collapse" aria-labelledby="headingNine" data-parent="#accordion">
                                                    <div class="card-body">
                                                       Cociente entre el lóbulo principal del diagrama de radiación y el mayor de los lóbulos secundarios.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTen"
                                                            aria-expanded="false" aria-controls="collapseTen">
                                                            Residuo
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTen" class="collapse" aria-labelledby="headingTen" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Se denomina también error aparente. Se trata de la diferencia entre una medida de una 
                                                        magnitud determinada y el valor promedio calculado para esta misma magnitud.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingEleven">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseEleven"
                                                            aria-expanded="false" aria-controls="collapseEleven">
                                                            Resolución horizontal
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseEleven" class="collapse" aria-labelledby="headingEleven" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Capacidad del radar para resolver dos señales adyacentes en el espacio horizontal de manera 
                                                        que se puedan interpretar como elementos separados.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwelve">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwelve"
                                                            aria-expanded="false" aria-controls="collapseTwelve">
                                                            Resolución vertical
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwelve" class="collapse" aria-labelledby="headingTwelve" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Capacidad del radar para resolver dos señales adyacentes en el tiempo.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingThirteen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseThirteen"
                                                            aria-expanded="false" aria-controls="collapseThirteen">
                                                            Ruido termal de una antena
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseThirteen" class="collapse" aria-labelledby="headingThirteen" data-parent="#accordion">
                                                    <div class="card-body">
                                                       Ruido electrónico dependiente de la frecuencia. El ruido termal de fondo en el receptor es el 
                                                       factor que limita la sensibilidad del radar.

                                                    </div>
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </p>
                                </div>
                                <div class="tab-pane p-3" id="home-20" role="tabpanel">
                                    <p class="mb-0">
                                        <div id="accordion">
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingOne">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a data-toggle="collapse" data-parent="#accordion"
                                                            href="#collapseOne" aria-expanded="true"
                                                            aria-controls="collapseOne" class="text-dark">
                                                            Saturación (q)
                                                        </a>
                                                    </h5>
                                                </div>
            
                                                <div id="collapseOne" class="collapse show"
                                                        aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Relación entre el volumen de agua (Vw) y el volumen total (VT). 
                                                        Puede definirse como el producto de la porosidad (n) por el grado 
                                                        de saturación (Sa). Define el contenido de agua del suelo. 
                                                        Porcentaje de agua en volumen contenida en el suelo.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwo"
                                                            aria-expanded="false" aria-controls="collapseTwo">
                                                            Scaena
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Conjunto del edificio escénico estable que hace referencia, especialmente, a los locales 
                                                        interiores destinados a los actores. Más tarde se ha aplicado a todo el fondo escénico y 
                                                        a la escena propiamente dicha. Originariamente hacía referencia a la tienda erigida en la 
                                                        orchestra donde se retiraban los actores para caracterizarse.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingThree">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseThree"
                                                            aria-expanded="false" aria-controls="collapseThree">
                                                            Semianchura del lóbulo
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Distancia angular del diagrama de radiación entre la vertical y el límite del haz principal.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFive">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFive"
                                                            aria-expanded="false" aria-controls="collapseFive">
                                                            Semiconductores
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
                                                    <div class="card-body">
                                                          Materiales cuya conductividad se encuentra comprendida en la franja entre los 105 S/m y los 10-8 S/m.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSix">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSix"
                                                            aria-expanded="false" aria-controls="collapseSix">
                                                            Sensibilidad del radar
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Parámetro expresado en decibelios que proporciona un balance energético entre la potencia mínima 
                                                        detectable por la antena receptora y la potencia emitida por la emisora.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSeven">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSeven"
                                                            aria-expanded="false" aria-controls="collapseSeven">
                                                            Suelo arcilloso
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Medio con un porcentaje de arcillas superior al 30%.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingEight">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseEight"
                                                            aria-expanded="false" aria-controls="collapseEight">
                                                            Suelo arenoso
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Medio con un elevado porcentaje de arena.

                                                    </div>
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </p>
                                </div>
                                <div class="tab-pane p-3" id="home-21" role="tabpanel">
                                    <p class="mb-0">
                                        <div id="accordion">
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingOne">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a data-toggle="collapse" data-parent="#accordion"
                                                            href="#collapseOne" aria-expanded="true"
                                                            aria-controls="collapseOne" class="text-dark">
                                                            Tiempo doble de propagación
                                                        </a>
                                                    </h5>
                                                </div>
            
                                                <div id="collapseOne" class="collapse show"
                                                        aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Tiempo que tarda la señal en llegar al reflector y volver de nuevo hacia la antena. 
                                                        Recibe esta denominación porque recorre dos veces la distancia que separa la antena del reflector.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwo"
                                                            aria-expanded="false" aria-controls="collapseTwo">
                                                            Tomografía
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Método para obtener imágenes bidimensionales de variación de la velocidad o de la amplitud 
                                                        de la onda dentro de un mismo medio.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingThree">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseThree"
                                                            aria-expanded="false" aria-controls="collapseThree">
                                                           Transductor
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Dispositivo que convierte la potencia eléctrica de una corriente en potencia acústica o 
                                                         mecánica, y viceversa, las vibraciones acústicas en señales eléctricas.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFive">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFive"
                                                            aria-expanded="false" aria-controls="collapseFive">
                                                            Transiluminación
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
                                                    <div class="card-body">
                                                           Método de trabajo con antenas biestáticas para analizar medios accesibles por dos de 
                                                           sus superficies enfrentadas. Se coloca cada una de las antenas en una de estas superficies. 
                                                           Suele utilizarse para el estudio de elementos constructivos: muros, columnas, etc.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSix">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSix"
                                                            aria-expanded="false" aria-controls="collapseSix">
                                                            Traza
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Registro puntual de amplitud.

                                                    </div>
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </p>
                                </div>
                                <div class="tab-pane p-3" id="home-22" role="tabpanel">
                                    <p class="mb-0">
                                        <div id="accordion">
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingOne">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a data-toggle="collapse" data-parent="#accordion"
                                                            href="#collapseOne" aria-expanded="true"
                                                            aria-controls="collapseOne" class="text-dark">
                                                            Unidad central
                                                        </a>
                                                    </h5>
                                                </div>
            
                                                <div id="collapseOne" class="collapse show"
                                                        aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Unidad de control del georradar. Habitualmente consiste en un 
                                                        ordenador conectado a un monitor en el que se visualizan los 
                                                        registros que se van adquiriendo. Desde este ordenador se controlan
                                                        todos los parámetros de adquisición de datos y la emisión de las antenas.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwo"
                                                            aria-expanded="false" aria-controls="collapseTwo">
                                                            Unidad material
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Zona del medio que presenta unos parámetros electromagnéticos casi constantes. 
                                                        En los contactos entre unidades materiales de un medio se producen cambios bruscos 
                                                        en todos o alguno de los parámetros electromagnéticos.
                                                    </div>
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </p>
                                </div>
                                <div class="tab-pane p-3" id="home-23" role="tabpanel">
                                    <p class="mb-0">
                                        <div id="accordion">
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingOne">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a data-toggle="collapse" data-parent="#accordion"
                                                            href="#collapseOne" aria-expanded="true"
                                                            aria-controls="collapseOne" class="text-dark">
                                                            Valor promedio de una magnitud
                                                        </a>
                                                    </h5>
                                                </div>
            
                                                <div id="collapseOne" class="collapse show"
                                                        aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Es el valor más probable de una cierta magnitud de la que se ha tomado 
                                                        una serie de medidas. Se define como la suma de cada una de las medidas 
                                                        individuales de dicha magnitud dividida entre el número de medidas efectuadas.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwo"
                                                            aria-expanded="false" aria-controls="collapseTwo">
                                                            Variable estadística
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Magnitud que se estima a partir de un número de medidas (muestreo) que permite que los 
                                                        errores estadísticos tengan significado real. Se puede estimar de diferentes maneras en 
                                                        función del tipo de experimento. En general se acepta que un número de medidas de la misma 
                                                        variable superior a 100 proporciona una variable estadística. Se acepta un tratamiento 
                                                        estadístico a variables estimadas a partir de un número de medidas superiora 10, pero 
                                                        teniendo en cuenta que cuando más reducida es la muestra más se alejan de su significado 
                                                        los errores típico y cuadrático medio.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingThree">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseThree"
                                                            aria-expanded="false" aria-controls="collapseThree">
                                                           Variable no estadística
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Se acepta que se trata de aquellas variables que se han estimado a partir de un número 
                                                         de medidas inferior a 10. No se pueden calcular los errores a partir de tratamiento 
                                                         estadístico y hay que trabajar con los errores máximos asociados a la variable.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFive">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFive"
                                                            aria-expanded="false" aria-controls="collapseFive">
                                                            Velocidad característica de un medio
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
                                                    <div class="card-body">
                                                           Velocidad promedio a la que se propaga una onda electromagnética por ese medio.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSix">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSix"
                                                            aria-expanded="false" aria-controls="collapseSix">
                                                            Volumen de huecos (VH)
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Es el volumen de poros o intersticios del suelo. Está formado por el volumen de agua 
                                                        (Vw) y el volumen de aire (Va) de un suelo.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSix">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSix"
                                                            aria-expanded="false" aria-controls="collapseSix">
                                                            Vomitorios
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Accesos a las gradas desde los pasillos de comunicaciones que discurren por el interior 
                                                        de las estructuras que forman la summa cavea.

                                                    </div>
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </p>
                                </div>
                                <div class="tab-pane p-3" id="home-24" role="tabpanel">
                                    <p class="mb-0">
                                        NO HAY INFORMACIÓN IMPORTANTE QUE MOSTRAR AQUI
                                    </p>
                                </div>
                                <div class="tab-pane p-3" id="home-25" role="tabpanel">
                                    <p class="mb-0">
                                        NO HAY INFORMACIÓN IMPORTANTE QUE MOSTRAR AQUI
                                    </p>
                                </div>
                                <div class="tab-pane p-3" id="home-26" role="tabpanel">
                                    <p class="mb-0">
                                        NO HAY INFORMACIÓN IMPORTANTE QUE MOSTRAR AQUI
                                    </p>
                                </div>
                                <div class="tab-pane p-3" id="home-27" role="tabpanel">
                                    <p class="mb-0">
                                        <div id="accordion">
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingOne">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a data-toggle="collapse" data-parent="#accordion"
                                                            href="#collapseOne" aria-expanded="true"
                                                            aria-controls="collapseOne" class="text-dark">
                                                            Zonas de Fresnel
                                                        </a>
                                                    </h5>
                                                </div>
            
                                                <div id="collapseOne" class="collapse show"
                                                        aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Zonas de la superficie iluminada que contribuyen en la reflexión; 
                                                        dependen de la separación entre el emisor y el reflector y de la 
                                                        longitud de onda de la señal incidente.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwo"
                                                            aria-expanded="false" aria-controls="collapseTwo">
                                                            Zona irradiada por la antena
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Área del reflector determinada por la intersección entre el cono de emisión y la superficie reflectora.

                                                    </div>
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>


            
                                

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

    <!-- App js -->
    <script src="assets/js/app.js"></script>
    </body>
</html>
