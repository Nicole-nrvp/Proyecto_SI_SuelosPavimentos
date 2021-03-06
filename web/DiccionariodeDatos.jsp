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
                                        <img src="assets/img/flags/spain_flag.jpg" class="mr-2" height="12" alt="" />Espa??ol <span class="mdi mdi-chevron-down" ></span>

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
                                            <a class="dropdown-item d-block" href="#"><span class="badge badge-success float-right">1</span><i class="mdi mdi-settings"></i> Configuraci??n</a>
                                            <a class="dropdown-item" href="#"><i class="mdi mdi-lock-open-outline"></i> Bloquear Pantalla</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item text-danger" href="Login.jsp"><i class="mdi mdi-power text-danger"></i> Cerra Sesi??n</a>
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
                                        <span class="d-none d-md-block">??</span><span class="d-block d-md-none"><i class="mdi mdi-settings h5"></i></span>
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
                                                            Absorci??n
                                                        </a>
                                                    </h5>
                                                </div>
            
                                                <div id="collapseOne" class="collapse show"
                                                        aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Transformaci??n de parte de la energ??a electromagn??tica que se propaga en calor. 
                                                        En la banda de microondas y radiofrecuencias este fen??meno se produce por la 
                                                        polarizaci??n orientacional de las mol??culas de agua.

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
                                                            Agua higrosc??pica
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Agua de absorci??n. Humedad debida a mol??eculas de agua del aire que son absorbidas por 
                                                        las part??culas del s??lido. El contenido de este tipo de humedad depende del porcentaje 
                                                        de humedad del aire, de la presi??n del aire y de la temperatura. El agua se sit??a formando 
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
                                                            An??lisis granulom??trico
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Determinaci??n de los distintos tama??os de part??culas que forman un suelo.
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
                                                            Ancho del l??bulo entre ceros
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseNine" class="collapse" aria-labelledby="headingNine" data-parent="#accordion">
                                                    <div class="card-body">
                                                       Distancia angular del diagrama de radiaci??n entre las dos direcciones del espacio en las 
                                                       que el l??bulo principal alcanza el m??nimo valor.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTen"
                                                            aria-expanded="false" aria-controls="collapseTen">
                                                            Anchura del l??bulo
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
                                                        Parte del radar de subsuelo utilizada para emitir hacia el interior del medio la enetg??a 
                                                        que les suministra la unidad de control en forma de potencia, con la direccionalidad y 
                                                        las caracter??sticas adecuadas a la aplicaci??n deseada. Tambi??n han de recibir la parte de 
                                                        energ??a que se refleja en las discontinuidades electromagn??ticas del medio y regresa hacia 
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
                                                            Antenas al??mbricas
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwelve" class="collapse" aria-labelledby="headingTwelve" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Construidas mediante hilos conductores que soportan las corrientes que dan lugar a los campos 
                                                        magn??ticos radiados. La disposici??n de estos hilos puede ser variada. Las antenas de georradar 
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
                                                            Antenas biest??ticas
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseThirteen" class="collapse" aria-labelledby="headingThirteen" data-parent="#accordion">
                                                    <div class="card-body">
                                                       Est??n formadas por dos m??dulos separados e independientes: un emisor y un receptor.
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
                                                        La onda se genera mediante una disposici??n de campos que se excitan mediante gu??as de ondas. 
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
                                                         Antenas con una espira que funciona como un dipolo y que emite una onda cuya longitud en el vac??o 
                                                         es el doble de la longitud m??xima de la espira.

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
                                                        Antenas que presentan direcciones privilegiadas de radiaci??n.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSeventeen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSeventeen"
                                                            aria-expanded="false" aria-controls="collapseSeventeen">
                                                            Antenas isotr??picas
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
                                                            Antenas monoest??ticas
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseEighteen" class="collapse" aria-labelledby="headingEighteen" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Son antenas emisoras y receptoras de energ??a al mismo tiempo. La actuaci??n de la antena se 
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
                                                         Granos de suelo que tienen un di??metro medio inferior a las 2 ??m. Un suelo formado por una mayor 
                                                         parte de sus part??culas con tama??o inferior a este di??metro se dice que est?? formado por minerales arcillosos.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwenty">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwenty"
                                                            aria-expanded="false" aria-controls="collapseTwenty">
                                                            ??rea efectiva de una antena
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwenty" class="collapse" aria-labelledby="headingTwenty" data-parent="#accordion">
                                                    <div class="card-body">
                                                        ??rea de captaci??n de energ??a.
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
                                                        Part??culas de suelo con di??metro medio comprendido entre los 0.06 mm y los 2 mm.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwentytwo">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwentytwo"
                                                            aria-expanded="false" aria-controls="collapseTwentytwo">
                                                            Atenuaci??n
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwentytwo" class="collapse" aria-labelledby="headingTwentytwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Disminuci??n de la energ??a de una onda (y por lo tanto, tambi??n de su amplitud) durante 
                                                        la propagaci??n por un medio. Generalmente, las principales causas de atenuaci??n son la 
                                                        absorci??n del medio y la expansi??n geom??trica del frente de ondas.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwentyThree">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwentyThree"
                                                            aria-expanded="false" aria-controls="collapseTwentyThree">
                                                            Atenuaci??n espec??fica
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwentyThree" class="collapse" aria-labelledby="headingTwentyThree" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Grado de atenuaci??n de una onda por unidad de longitud.

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                   
                                </div>
                                <div class="tab-pane p-3" id="home-2" role="tabpanel">
                                    <p class="mb-0">
                                        NO HAY INFORMACI??N IMPORTANTE QUE MOSTRAR AQUI
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
                                                        Mortero utilizado en ??poca romana que se utilizaba como relleno 
                                                        de los muros. Se trata de una argamasa realizada con cal, arena, 
                                                        cascotes y peque??as piedras.

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
                                                            Coeficiente de reflexi??n
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Factor que proporciona el porcentaje de energ??a que se refleja en una discontinuidad en 
                                                         relaci??n a la energ??a que incide sobre ella.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFour">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFour"
                                                            aria-expanded="false" aria-controls="collapseFour">
                                                            Coeficiente de transmisi??n
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Factor que proporciona el porcentaje de energ??a de una se??al incidente que se refracta y, 
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
                                                            Composici??n
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Porcentaje de cada uno de los elementos minerales y org??nicos que forman parte del suelo.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSix">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSix"
                                                            aria-expanded="false" aria-controls="collapseSix">
                                                            Composici??n qu??mica de un medio
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Composici??n mineral??gica. Abundancia de sus elementos componentes.

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
                                                        la componente imaginaria de la permitividad diel??ctrica compleja, que genera un campo 
                                                        el??ctrico en fase con el campo externo. Corrientes en fase con el campo externo.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingEight">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseEight"
                                                            aria-expanded="false" aria-controls="collapseEight">
                                                            Conductividad est??tica
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Cuando solo existen efectos de la parte real de la conductividad. Amplitud de la corriente 
                                                        en fase con la intensidad del campo el??ctrico externo.

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
                                                       Medida de la respuesta de las cargas libres de un medio en presencia de un campo el??ctrico externo.

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
                                                        Parte imaginaria de la constante de propagaci??n.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwelve">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwelve"
                                                            aria-expanded="false" aria-controls="collapseTwelve">
                                                            Constante diel??ctrica
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwelve" class="collapse" aria-labelledby="headingTwelve" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Permitividad diel??ctrica. Recibe el nombre de constante porque para un mismo medio (misma }
                                                        mezcla de materiales) en unas mismas condiciones f??sicas (porosidad, saturaci??n y temperatura, 
                                                        principalmente) es un valor constante caracter??stico.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingThirteen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseThirteen"
                                                            aria-expanded="false" aria-controls="collapseThirteen">
                                                            Constante de propagaci??n
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseThirteen" class="collapse" aria-labelledby="headingThirteen" data-parent="#accordion">
                                                    <div class="card-body">
                                                       Factor de decaimiento de la intensidad del campo electromagn??tico. N??mero de onda complejo.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFourteen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFourteen"
                                                            aria-expanded="false" aria-controls="collapseFourteen">
                                                            Curvas granulom??tricas
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFourteen" class="collapse" aria-labelledby="headingFourteen" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Resultado de un an??lisis granulom??trico. Proporciona el porcentaje de part??culas de cada tama??o 
                                                        presente en un suelo mediante una gr??fica que muestra el tama??o frente al porcentaje.

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
                                                        Relaci??n entre la masa de un determinado volumen de un 
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
                                                            Diagrama de radiaci??n
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Representaciones gr??ficas del frente de ondas que radia una antena en las diferentes direcciones del espacio.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingThree">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseThree"
                                                            aria-expanded="false" aria-controls="collapseThree">
                                                            Difracci??n
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Efecto que se produce cuando la energ??a incide en un ??nico elemento de tama??o relativamente 
                                                         grande de manera que las condiciones del medio var??an bruscamente de un punto a otro.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFour">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFour"
                                                            aria-expanded="false" aria-controls="collapseFour">
                                                            Difracci??n de rayos X
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                                                    <div class="card-body">
                                                        M??todo utilizado para identificar los minerales cristalinos formadores de un medio, 
                                                        existentes en un porcentaje superior al 1%.
                                                        Consiste en la generaci??n del espectro de rayos X mediante la colisi??n de electrones 
                                                        energ??ticos (entre 10 y 100 KeV) contra una muestra del medio analizado.
                                                    
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
                                                         Par??metro que caracteriza a las antenas direccionales. Cociente de la densidad de 
                                                         potencia que se tiene a una cierta distancia de la antena direccional emisora y la 
                                                         densidad de potencia que se tendr??a en el mismo punto si la antena emisora fuese 
                                                         isotr??pica y radiase la misma potencia que la direccional.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSix">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSix"
                                                            aria-expanded="false" aria-controls="collapseSix">
                                                            Dispersi??n crom??tica
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Distorsi??n de la forma del pulso a consecuencia de las variaciones de la velocidad 
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
                                                            Dispersi??n geom??trica
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Atenuaci??n por expansi??n del frente de ondas durante la propagaci??n.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingEight">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseEight"
                                                            aria-expanded="false" aria-controls="collapseEight">
                                                            Dispersi??n
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Distribuci??n aleatoria de la energ??a cuando incide sobre objetos de dimensiones del orden 
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
                                                            Ecuaci??n de transmisi??n
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
                                                            Ecuaci??n del radar
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Caso particular de la ecuaci??n de transmisi??n en el que se analiza el balance de potencias 
                                                        que tiene lugar si la antena receptora capta la energ??a transmitida por la emisora despu??s 
                                                        de sufrir una reflexi??n en un objeto.

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
                                                        Par??metro que relaciona la ganancia con la directividad de una antena. Da una estimaci??n 
                                                        de las p??rdidas de potencia que tienen lugar en el interior de la antena.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFour">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFour"
                                                            aria-expanded="false" aria-controls="collapseFour">
                                                            Ensayo granulom??trico por sedimentaci??n
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                                                    <div class="card-body">
                                                        An??lisis granulom??tricos de part??culas de tama??o inferior a 0.074 mm basado en la velocidad 
                                                        de sedimentaci??n en el interior de un l??quido, considerando la ley de Stokes que relaciona 
                                                        esta velocidad con el di??metro de la part??cula.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFive">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFive"
                                                            aria-expanded="false" aria-controls="collapseFive">
                                                            Ensayo granulom??trico por tamizado
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
                                                    <div class="card-body">
                                                       Utilizaci??n de tamices de tama??o normalizado para realizar el an??lisis granulom??trico de 
                                                       suelos, considerando part??culas de tama??o superior a los 0.074 mm (di??metro del tamiz m??s fino).

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
                                                            Errores de apreciaci??n
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Se trata de un tipo de error casual, asociado a la m??nima divisi??n de la escala de lectura del aparato utilizado.

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
                                                        est??n presentes en la medida de cualquier magnitud f??sica. Cuando menor es el error casual 
                                                        asociado a una medida, mayor es la precisi??n de ??sta.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingNine">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseNine"
                                                            aria-expanded="false" aria-controls="collapseNine">
                                                            Error cuadr??tico medio
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
                                                            Error est??ndar (s)
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTen" class="collapse" aria-labelledby="headingTen" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Es el error cuadr??tico medio del promedio de una serie de medidas de una variable. 
                                                        Se puede calcular cuando el n??mero de medidas realizadas de la misma variable es 
                                                        mayor a 10. Proporciona una estimaci??n concreta de la probabilidad de que un valor 
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
                                                            Error ileg??timo
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseEleven" class="collapse" aria-labelledby="headingEleven" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Se trata de un error asociado a una medida que no es casual ni sistem??tico.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwelve">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwelve"
                                                            aria-expanded="false" aria-controls="collapseTwelve">
                                                            Error m??ximo
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwelve" class="collapse" aria-labelledby="headingTwelve" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Se utiliza cuando no se puede efectuar una estimaci??n del error estad??stico porque se ha 
                                                        realizado un n??mero de medidas inferior a 10. Se calcula como la diferencia entre las dos 
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
                                                            Error sistem??tico
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFourteen" class="collapse" aria-labelledby="headingFourteen" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Son errores que se repiten constantemente en el transcurso de un experimento y afectan de igual 
                                                        manera a todas las medidas realizadas o a toda una serie de estas medidas. Como est??n presentes 
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
                                                         Canal de evacuaci??n para aguas pluviales que gira entorno de la orchestra, al pie de la cavea.

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
                                                        Una medida es m??s exacta cuanto menores son los errores sistem??ticos.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSeventeen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSeventeen"
                                                            aria-expanded="false" aria-controls="collapseSeventeen">
                                                            Expansi??n geom??trica
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSeventeen" class="collapse" aria-labelledby="headingSeventeen" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Atenuaci??n de la se??al que se produce por el avance del frente de ondas. Para una onda interna 
                                                        esta atenuaci??n es del orden de r-1 para la amplitud y de r-2 para la energ??a.

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
                                                            Factor de atenuaci??n
                                                        </a>
                                                    </h5>
                                                </div>
            
                                                <div id="collapseOne" class="collapse show"
                                                        aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Parte real de la constante de propagaci??n. Proporciona el 
                                                        grado de disminuci??n de la amplitud de la onda durante su 
                                                        propagaci??n debido a la absorci??n del medio.
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
                                                        Se considera que un suelo est?? formado por tres fases: la fase s??lida (formada por los 
                                                        granos), la fase l??quida (formada por el fluido intersticial) y la fase gaseosa (el aire 
                                                        que ocupa parte o todo el volumen de poros cuando el suelo est?? parcialmente saturado o seco).
                                                        <br>
                                                        El volumen total del suelo (VT) es la suma del volumen de agua (Vw), del volumen de aire (Va) 
                                                        y del volumen de s??lido (Vs), como se puede ver esquematizado en la figura. Al peso del agua 
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
                                                         Son las aperturas de un elemento constructivo que afectan ??nicamente a su superficie o a 
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
                                                        Fluido que puede desplazarse por los poros del medio comunicados entre s??, en funci??n 
                                                        de la atracci??n gravitatoria que sufre.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSeven">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSeven"
                                                            aria-expanded="false" aria-controls="collapseSeven">
                                                            Fracci??n de volumen de un material
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
                                                        Frecuencia a la que la amplitud es mayor. Se trata de aquella que se sit??a en el centro de la banda de emisi??n de la antena.

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
                                                        Amplificaci??n que se aplica al radargrama durante la adquisici??n de datos o durante su procesado.
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
                                                        Cociente entre la potencia m??xima radiada por la antena por unidad de ??ngulo s??lido y 
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
                                                            Grado de atenuaci??n
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
                                                            Grado de saturaci??n (Sa)
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
                                                    <div class="card-body">
                                                          Es la relaci??n entre el volumen de agua (Vw) y el volumen de huecos (VH).
                                                          <br>
                                                          S  = Vw/VH = Ww VH ??w
                                                          <br>
                                                          Siendo Ww el peso del agua y ??w el peso espec??fico del agua.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSix">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSix"
                                                            aria-expanded="false" aria-controls="collapseSix">
                                                            Granulometr??a de un suelo
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Relaci??n de los distintos tama??os de part??culas que forman un suelo. Di??metro medio 
                                                        de las part??culas que forman la fase s??lida de un suelo.

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
                                                        Part??culas de suelo con tama??o superior a los 2 mm. Se dividen en: gravilla (con di??metro 
                                                        entre 2 mm y 40 mm), gravas (di??metro entre 40 mm y 10 cm), bolos (entre 10 cm y 30 cm) 
                                                        y bloques (tama??os superiores a 30 cm).

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
                                                        Cara lateral de una excavaci??n.
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
                                                        Distancia angular entre las direcciones del diagrama de radiaci??n donde la potencia es 
                                                        la mitad del valor m??ximo. Esta potencia equivale aproximadamente a 3 dB menos que el 
                                                        valor m??ximo de la potencia.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingThree">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseThree"
                                                            aria-expanded="false" aria-controls="collapseThree">
                                                            Hip??rbolas debidas al ancho de la antena
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Eventos hiperb??licos de los radargramas que se producen en eventos de tama??o finito o en 
                                                         discontinuidades electromagn??ticas laterales. Aunque similares a las hip??rbolas de difracci??n 
                                                         de s??smica no se originan por el mismo fen??meno, sino a consecuencia de la anchura del haz de 
                                                         emisi??n de la antena, que permite detectar el elemento antes de alcanzar su vertical.

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
                                                          ??rea de la superficie iluminada por la emisi??n electromagn??tica en la que se produce 
                                                          la reflexi??n de la mayor parte de la energ??a incidente. Queda determinada por la primera 
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
                                                        Relaci??n entre el peso del agua (Ww) y el peso del suelo seco (Ws). Porcentaje de agua 
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
                                                            Impedancia de un campo electromagn??tico
                                                        </a>
                                                    </h5>
                                                </div>
            
                                                <div id="collapseOne" class="collapse show"
                                                        aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Cociente entre el campo el??ctrico y el campo magn??tico.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwo"
                                                            aria-expanded="false" aria-controls="collapseTwo">
                                                            ??ndice de poros (e)
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Relaci??n entre el volumen de huecos (VH) y el volumen de s??lido (VS).

                                                    </div>
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </p>
                                </div>
                                <div class="tab-pane p-3" id="home-10" role="tabpanel">
                                    <p class="mb-0">
                                        NO HAY INFORMACI??N IMPORTANTE QUE MOSTRAR AQUI
                                    </p>
                                </div>
                                <div class="tab-pane p-3" id="home-11" role="tabpanel">
                                    <p class="mb-0">
                                        NO HAY INFORMACI??N IMPORTANTE QUE MOSTRAR AQUI
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
                                                        Part??culas de suelo con di??metro medio comprendido entre los 0.06 mm y los 0.002 mm.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwo"
                                                            aria-expanded="false" aria-controls="collapseTwo">
                                                           L??bulo principal
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Zona del espacio donde la radiaci??n es m??xima.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwo"
                                                            aria-expanded="false" aria-controls="collapseTwo">
                                                            L??bulos secundarios
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Zonas que rodean al l??bulo principal y que presentan una amplitud menor.

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
                                                            Materiales de peque??as p??rdidas
                                                        </a>
                                                    </h5>
                                                </div>
            
                                                <div id="collapseOne" class="collapse show"
                                                        aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Materiales con un valor peque??o del factor de p??rdidas. Son materiales diel??ctricos o casi diel??ctricos.

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
                                                       Material s??lido de un medio.
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
                                                         Evaluaci??n de un determinado par??metro a partir de su comparaci??n con una unidad patr??n. 
                                                         Se trata de una medida efectuada por comparaci??n con el patr??n escogido como unidad de 
                                                         medida. Los n??meros que dan la medida dependen de la unidad patr??n utilizada, que se puede 
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
                                                        Determinaci??n de una magnitud que no se puede analizar por comparaci??n con un patr??n pero que 
                                                        depende de una o m??s variables que se pueden medir directamente. Su valor se obtiene efectuando 
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
                                                         Elemento compuesto por tres fases: fase s??lida (formada por la parte mineral y la 
                                                         org??nica s??lida), fase l??quida (fluido intersticial) y fase gaseosa (normalmente 
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
                                                        Medio muy absorbente, que aten??a la energ??a emitida muy r??pidamente y permite una profundidad de estudio muy peque??a.

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
                                                        Medio no absorbente o muy poco absorbente, que permite el paso de casi toda la energ??a emitida.

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
                                                       Poros de di??metro medio inferior a 1m??.

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
                                                        Granos minerales de tama??o inferior a 2 ??m.
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
                                                        En estad??stica, el n??mero de medidas realizadas sobre una misma variable para obtener su valor promedio.

                                                    </div>
                                                </div>
                                            </div>
                                        
                                        </div>
                                    </p>
                                </div>
                                <div class="tab-pane p-3" id="home-14" role="tabpanel">
                                    <p class="mb-0">
                                        NO HAY INFORMACI??N IMPORTANTE QUE MOSTRAR AQUI
                                    </p>
                                </div>
                                <div class="tab-pane p-3" id="home-15" role="tabpanel">
                                    <p class="mb-0">
                                        NO HAY INFORMACI??N IMPORTANTE QUE MOSTRAR AQUI
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
                                                        En la ??poca griega era la zona donde declamaban los actores. En los teatros 
                                                        romanos, esta zona, en la que inicialmente danzaba el coro, acab?? siendo reservada 
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
                                                            Par??metros electromagn??ticos
                                                        </a>
                                                    </h5>
                                                </div>
            
                                                <div id="collapseOne" class="collapse show"
                                                        aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Par??metros que definen el medio electromagn??ticamente: conductividad, 
                                                        permitividad diel??ctrica y permeabilidad magn??tica.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwo"
                                                            aria-expanded="false" aria-controls="collapseTwo">
                                                            P??rdida en el espacio libre
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        P??rdida de potencia que tiene lugar entre la transmisi??n y la recepci??n de la se??al si 
                                                        las dos antenas involucradas son isotr??picas.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingThree">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseThree"
                                                            aria-expanded="false" aria-controls="collapseThree">
                                                            Permeabilidad magn??tica
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Capacidad de imanaci??n de un medio en presencia de un campo magn??tico externo. 
                                                        Constante de proporcionalidad entre la intensidad del campo magn??tico externo y la inducci??n magn??tica.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFour">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFour"
                                                            aria-expanded="false" aria-controls="collapseFour">
                                                            Permitividad diel??ctrica
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Capacidad de polarizaci??n de un medio en presencia de un campo el??ctrico externo. 
                                                        Constante de proporcionalidad entre el campo el??ctrico externo aplicado y el desplazamiento el??ctrico.

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
                                                        Efecto de la componente real de la permitividad di??l??ctrica compleja junto al efecto 
                                                        de las cargas libres determinado por la parte imaginaria de la conductividad compleja. 
                                                        Corrientes en desfase con el campo externo. Proporciona una estimaci??n de la capacidad 
                                                        de polarizaci??n de un medio en presencia de un campo electromagn??tico.

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
                                                        de saturaci??n (Sa) por la porosidad (n) y el peso espec??fico del agua (??w).

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
                                                        Es el peso de la parte s??lida del suelo. Se obtiene con el producto de (1-n), que 
                                                        proporciona el porcentaje de suelo que no son poros, por el peso espec??fico del s??lido (??s). 
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
                                                            Peso espec??fico
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseEight" class="collapse" aria-labelledby="headingEight" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Relaci??n entre el volumen total de la muestra y su peso.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingNine">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseNine"
                                                            aria-expanded="false" aria-controls="collapseNine">
                                                            Peso espec??fico de la parte s??lida (o del grano) (gs)
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseNine" class="collapse" aria-labelledby="headingNine" data-parent="#accordion">
                                                    <div class="card-body">
                                                       Es el peso espec??fico de las part??culas que forman el suelo. Es el peso del s??lido (Ws) 
                                                       dividido por el volumen de s??lido (Vs).

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTen"
                                                            aria-expanded="false" aria-controls="collapseTen">
                                                            Peso espec??fico aparente del suelo h??medo (g???)
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTen" class="collapse" aria-labelledby="headingTen" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Es el peso espec??fico de la muestra de suelo cuando parte de los huecos est??n parcialmente 
                                                        llenos de agua. Se trata de la expresi??n m??s general del peso espec??fico de la muestra 
                                                        excepto en el caso de tratarse de suelo sumergido.
                                                        Siendo WT el peso total de la muestra; VT el volumen total de la muestra; Ws el peso del s??lido y Ww el peso del agua.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingEleven">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseEleven"
                                                            aria-expanded="false" aria-controls="collapseEleven">
                                                            Peso espec??fico aparente del suelo saturado (gsat)
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseEleven" class="collapse" aria-labelledby="headingEleven" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Es el peso espec??fico de la muestra de suelo cuando todos los huecos est??n llenos de agua.
                                                        Siendo WT el peso total de la muestra; VT el volumen total de la muestra; Ws el peso del s??lido; 
                                                        Ww el peso del agua y ??w el peso espec??fico del agua.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwelve">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwelve"
                                                            aria-expanded="false" aria-controls="collapseTwelve">
                                                            Peso espec??fico de la muestra (gn)
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwelve" class="collapse" aria-labelledby="headingTwelve" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Relaci??n entre el peso total de la muestra de suelo (WT=Ws+Ww) y su volumen total (VT). 
                                                        Siendo Ws el peso del s??lido; Ww el peso del agua y w la humedad.
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
                                                        Relaci??n entre el volumen de huecos (VH) y el volumen total (VT). Proporci??n de huecos de un medio. 
                                                        Determina el porcentaje del volumen de un medio que no est?? relleno de material s??lido.
                                                        Siendo ??n el peso espec??fico aparente de la muestra; ??s el peso espec??fico del s??lido; w la humedad y e el ??ndice de huecos.


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
                                                        Porcentaje del volumen de poros conectados entre s??.
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
                                                            Precisi??n
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSixteen" class="collapse" aria-labelledby="headingSixteen" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Una medida es m??s precisa que otra cuando sus errores causales son menores.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingSeventeen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseSeventeen"
                                                            aria-expanded="false" aria-controls="collapseSeventeen">
                                                            Profundidad nominal de penetraci??n
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseSeventeen" class="collapse" aria-labelledby="headingSeventeen" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Profundidad a la cual la energ??a de la onda ha disminuido en un factor de 1/e (aproximadamente un 37% del valor inicial).

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingEighteen">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseEighteen"
                                                            aria-expanded="false" aria-controls="collapseEighteen">
                                                            Profundidad pelicular de penetraci??n
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseEighteen" class="collapse" aria-labelledby="headingEighteen" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Profundidad nominal de penetraci??n. Viene del ingl??s ???skin dept???.

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
                                                         Pretil m??s o menos alto que divide la cavea en diferentes zonas.

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
                                                        Gradas principales incluidas en el interior del c??rculo de la orchestra, formadas por asientos 
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
                                                        Zona elevada sobre el plano de la orquesta. Escenario. Originariamente se refer??a a una platarforma 
                                                        de madera colocada delante de la escena.

                                                    </div>
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </p>
                                </div>
                                <div class="tab-pane p-3" id="home-18" role="tabpanel">
                                    <p class="mb-0">
                                        NO HAY INFORMACI??N IMPORTANTE QUE MOSTRAR AQUI
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
                                                         Tiempo m??ximo de registro, equivalente a la longitud temporal del radargrama (o de una traza).

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
                                                        M??xima penetraci??n que puede alcanzar un sistema de radar.
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
                                                        Descubiertos por R??entgen en 1895 cuando trabajaba con luz emitida por el gas interno residual 
                                                        en un tubo de rayos cat??dicos, abarcan desde el ultravioleta lejano hasta los rayos ??, de tal 
                                                        manera que comprenden la zona del espectro electromagn??tico situado entre los 3??1017 Hz y los 5??1019 Hz. 
                                                        Su longitud de onda queda situada entre 10-9 m y 6??10-12 m. Son altamente energ??ticos, presentando 
                                                        valores entre 1.2 KeV y 200 KeV. Se generan en las transiciones de los electrones internos de los ??tomos 
                                                        y por frenado de part??culas r??pidas cargadas. Se detectan por la elevada ionizaci??n que producen en la 
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
                                                        Superficie donde se produce la reflexi??n de parte de la energ??a que incide. Estas 
                                                        superficies son discontinuidades bruscas de uno o varios par??metros electromagn??ticos y, 
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
                                                            Relaci??n de l??bulo principal a secundario
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseNine" class="collapse" aria-labelledby="headingNine" data-parent="#accordion">
                                                    <div class="card-body">
                                                       Cociente entre el l??bulo principal del diagrama de radiaci??n y el mayor de los l??bulos secundarios.

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
                                                        Se denomina tambi??n error aparente. Se trata de la diferencia entre una medida de una 
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
                                                            Resoluci??n horizontal
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseEleven" class="collapse" aria-labelledby="headingEleven" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Capacidad del radar para resolver dos se??ales adyacentes en el espacio horizontal de manera 
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
                                                            Resoluci??n vertical
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwelve" class="collapse" aria-labelledby="headingTwelve" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Capacidad del radar para resolver dos se??ales adyacentes en el tiempo.

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
                                                       Ruido electr??nico dependiente de la frecuencia. El ruido termal de fondo en el receptor es el 
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
                                                            Saturaci??n (q)
                                                        </a>
                                                    </h5>
                                                </div>
            
                                                <div id="collapseOne" class="collapse show"
                                                        aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Relaci??n entre el volumen de agua (Vw) y el volumen total (VT). 
                                                        Puede definirse como el producto de la porosidad (n) por el grado 
                                                        de saturaci??n (Sa). Define el contenido de agua del suelo. 
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
                                                        Conjunto del edificio esc??nico estable que hace referencia, especialmente, a los locales 
                                                        interiores destinados a los actores. M??s tarde se ha aplicado a todo el fondo esc??nico y 
                                                        a la escena propiamente dicha. Originariamente hac??a referencia a la tienda erigida en la 
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
                                                            Semianchura del l??bulo
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Distancia angular del diagrama de radiaci??n entre la vertical y el l??mite del haz principal.

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
                                                        Par??metro expresado en decibelios que proporciona un balance energ??tico entre la potencia m??nima 
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
                                                            Tiempo doble de propagaci??n
                                                        </a>
                                                    </h5>
                                                </div>
            
                                                <div id="collapseOne" class="collapse show"
                                                        aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Tiempo que tarda la se??al en llegar al reflector y volver de nuevo hacia la antena. 
                                                        Recibe esta denominaci??n porque recorre dos veces la distancia que separa la antena del reflector.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwo"
                                                            aria-expanded="false" aria-controls="collapseTwo">
                                                            Tomograf??a
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        M??todo para obtener im??genes bidimensionales de variaci??n de la velocidad o de la amplitud 
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
                                                         Dispositivo que convierte la potencia el??ctrica de una corriente en potencia ac??stica o 
                                                         mec??nica, y viceversa, las vibraciones ac??sticas en se??ales el??ctricas.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFive">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFive"
                                                            aria-expanded="false" aria-controls="collapseFive">
                                                            Transiluminaci??n
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
                                                    <div class="card-body">
                                                           M??todo de trabajo con antenas biest??ticas para analizar medios accesibles por dos de 
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
                                                        todos los par??metros de adquisici??n de datos y la emisi??n de las antenas.

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
                                                        Zona del medio que presenta unos par??metros electromagn??ticos casi constantes. 
                                                        En los contactos entre unidades materiales de un medio se producen cambios bruscos 
                                                        en todos o alguno de los par??metros electromagn??ticos.
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
                                                        Es el valor m??s probable de una cierta magnitud de la que se ha tomado 
                                                        una serie de medidas. Se define como la suma de cada una de las medidas 
                                                        individuales de dicha magnitud dividida entre el n??mero de medidas efectuadas.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwo">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseTwo"
                                                            aria-expanded="false" aria-controls="collapseTwo">
                                                            Variable estad??stica
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                        Magnitud que se estima a partir de un n??mero de medidas (muestreo) que permite que los 
                                                        errores estad??sticos tengan significado real. Se puede estimar de diferentes maneras en 
                                                        funci??n del tipo de experimento. En general se acepta que un n??mero de medidas de la misma 
                                                        variable superior a 100 proporciona una variable estad??stica. Se acepta un tratamiento 
                                                        estad??stico a variables estimadas a partir de un n??mero de medidas superiora 10, pero 
                                                        teniendo en cuenta que cuando m??s reducida es la muestra m??s se alejan de su significado 
                                                        los errores t??pico y cuadr??tico medio.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingThree">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseThree"
                                                            aria-expanded="false" aria-controls="collapseThree">
                                                           Variable no estad??stica
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                                    <div class="card-body">
                                                         Se acepta que se trata de aquellas variables que se han estimado a partir de un n??mero 
                                                         de medidas inferior a 10. No se pueden calcular los errores a partir de tratamiento 
                                                         estad??stico y hay que trabajar con los errores m??ximos asociados a la variable.

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingFive">
                                                    <h5 class="mb-0 mt-0 font-14">
                                                        <a class="collapsed text-dark" data-toggle="collapse"
                                                            data-parent="#accordion" href="#collapseFive"
                                                            aria-expanded="false" aria-controls="collapseFive">
                                                            Velocidad caracter??stica de un medio
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordion">
                                                    <div class="card-body">
                                                           Velocidad promedio a la que se propaga una onda electromagn??tica por ese medio.

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
                                                        Es el volumen de poros o intersticios del suelo. Est?? formado por el volumen de agua 
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
                                        NO HAY INFORMACI??N IMPORTANTE QUE MOSTRAR AQUI
                                    </p>
                                </div>
                                <div class="tab-pane p-3" id="home-25" role="tabpanel">
                                    <p class="mb-0">
                                        NO HAY INFORMACI??N IMPORTANTE QUE MOSTRAR AQUI
                                    </p>
                                </div>
                                <div class="tab-pane p-3" id="home-26" role="tabpanel">
                                    <p class="mb-0">
                                        NO HAY INFORMACI??N IMPORTANTE QUE MOSTRAR AQUI
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
                                                        Zonas de la superficie iluminada que contribuyen en la reflexi??n; 
                                                        dependen de la separaci??n entre el emisor y el reflector y de la 
                                                        longitud de onda de la se??al incidente.

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
                                                        ??rea del reflector determinada por la intersecci??n entre el cono de emisi??n y la superficie reflectora.

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
        ?? 2019 - 2020 Stexo <span class="d-none d-sm-inline-block"> - Crafted with <i class="mdi mdi-heart text-danger"></i> by Themesdesign</span>.
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
