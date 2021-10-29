<%-- 
    Document   : index
    Created on : 27/09/2021, 07:31:10 AM
    Author     : Valentina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">

        <title>Terre | Home</title>
        <link rel="shortcut icon" href="assets/img/icon/icono.png">
        <meta content="Responsive admin theme build on top of Bootstrap 4" name="description" />
        <meta content="Themesdesign" name="author" />
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!--Morris Chart CSS -->
        <link rel="stylesheet" href="../plugins/morris/morris.css">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="assets/css/metismenu.min.css" rel="stylesheet" type="text/css">
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css">
        <link href="assets/css/style.css" rel="stylesheet" type="text/css"/>

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
                            <h4 class="page-title">Home</h4>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-right">
                                <li class="breadcrumb-item"><a href="javascript:void(0);">Terre</a></li>
                                <li class="breadcrumb-item active">Home</li>
                            </ol>
                        </div>
                    </div>
                    <!-- end row -->
                </div>

                <div class="row">

                    <div class="col-sm-6 col-xl-3">
                        <div class="card">
                            <div class="card-heading p-4">
                                <div class="mini-stat-icon float-right">
                                    <i class="mdi mdi-cube-outline bg-primary  text-white"></i>
                                </div>
                                <div>
                                    <h5 class="font-16">Sessiones Activas</h5>
                                </div>
                                <h3 class="mt-4">10</h3>
                                <div class="progress mt-4" style="height: 4px;">
                                    <div class="progress-bar bg-primary" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <p class="text-muted mt-2 mb-0">Periodo<span class="float-right">80%</span></p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-xl-3">
                        <div class="card">
                            <div class="card-heading p-4">
                                <div class="mini-stat-icon float-right">
                                    <i class="mdi mdi-briefcase-check bg-success text-white"></i>
                                </div>
                                <div>
                                    <h5 class="font-16">Solicitudes Totales</h5>
                                </div>
                                <h3 class="mt-4">10</h3>
                                <div class="progress mt-4" style="height: 4px;">
                                    <div class="progress-bar bg-success" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <p class="text-muted mt-2 mb-0">Periodo<span class="float-right">50%</span></p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-xl-3">
                        <div class="card">
                            <div class="card-heading p-4">
                                <div class="mini-stat-icon float-right">
                                    <i class="mdi mdi-tag-text-outline bg-warning text-white"></i>
                                </div>
                                <div>
                                    <h5 class="font-16">Clientes Nuevos</h5>
                                </div>
                                <h3 class="mt-4">4</h3>
                                <div class="progress mt-4" style="height: 4px;">
                                    <div class="progress-bar bg-warning" role="progressbar" style="width: 68%" aria-valuenow="68" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <p class="text-muted mt-2 mb-0">Periodo<span class="float-right">68%</span></p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-xl-3">
                        <div class="card">
                            <div class="card-heading p-4">
                                <div class="mini-stat-icon float-right">
                                    <i class="mdi mdi-buffer bg-danger text-white"></i>
                                </div>
                                <div>
                                    <h5 class="font-16">Resultados Eficientes</h5>
                                </div>
                                <h3 class="mt-4">86%</h3>
                                <div class="progress mt-4" style="height: 4px;">
                                    <div class="progress-bar bg-danger" role="progressbar" style="width: 82%" aria-valuenow="82" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <p class="text-muted mt-2 mb-0">Periodo<span class="float-right">82%</span></p>
                            </div>
                        </div>
                    </div>


                </div>

                <!-- <div class="row">
                      <div class="col-xl-8">
                          <div class="card m-b-30">
                              <div class="card-body">
  
                                  <h4 class="mt-0 header-title mb-4">Graficos de Terre</h4>
  
                                  <div id="morris-area-example" class="morris-charts morris-chart-height"></div>
  
                              </div>
                          </div>
                      </div>
                <!-- end col 

                <div class="col-xl-4">
                    <div class="card m-b-30">
                        <div class="card-body">
                            <h4 class="mt-0 header-title mb-4">GRAFICOS</h4>

                            <div id="morris-donut-example" class="morris-charts morris-chart-height"></div>

                        </div>
                    </div>
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->

            <div class="row">
                <div class="col-xl-4">
                    <div class="card m-b-30">
                        <div class="card-body">
                            <h4 class="mt-0 header-title mb-4">Sugerencias de amigos       </h4>
                            <div class="friends-suggestions">
                                <a href="#" class="friends-suggestions-list">
                                    <div class="border-bottom position-relative">
                                        <div class="float-left mb-0 mr-3">
                                            <img src="assets/img/users/user-2.jpg" alt="" class="rounded-circle thumb-md">
                                        </div>
                                        <div class="suggestion-icon float-right mt-2 pt-1">
                                            <i class="mdi mdi-plus"></i>
                                        </div>

                                        <div class="desc">
                                            <h5 class="font-14 mb-1 pt-2 text-dark">Camilo Blanquicet</h5>
                                            <p class="text-muted">3 Sugerencias de amigos</p>
                                        </div>
                                    </div>
                                </a>

                                <a href="#" class="friends-suggestions-list">
                                    <div class="border-bottom position-relative">
                                        <div class="float-left mb-0 mr-3">
                                            <img src="assets/img/users/user-3.jpg" alt="" class="rounded-circle thumb-md">
                                        </div>
                                        <div class="suggestion-icon float-right mt-2 pt-1">
                                            <i class="mdi mdi-plus"></i>
                                        </div>

                                        <div class="desc">
                                            <h5 class="font-14 mb-1 pt-2 text-dark">Nicole Romero</h5>
                                            <p class="text-muted">17 Sugerencias de amigos</p>
                                        </div>
                                    </div>
                                </a>

                                <a href="#" class="friends-suggestions-list">
                                    <div class="border-bottom position-relative">
                                        <div class="float-left mb-0 mr-3">
                                            <img src="assets/img/users/user-4.jpg" alt="" class="rounded-circle thumb-md">
                                        </div>
                                        <div class="suggestion-icon float-right mt-2 pt-1">
                                            <i class="mdi mdi-plus"></i>
                                        </div>

                                        <div class="desc">
                                            <h5 class="font-14 mb-1 pt-2 text-dark">Viviana Rosillo</h5>
                                            <p class="text-muted">12 Sugerencias de amigos</p>
                                        </div>
                                    </div>
                                </a>

                                <a href="#" class="friends-suggestions-list">
                                    <div class="border-bottom position-relative">
                                        <div class="float-left mb-0 mr-3">
                                            <img src="assets/img/users/user-5.jpg" alt="" class="rounded-circle thumb-md">
                                        </div>
                                        <div class="suggestion-icon float-right mt-2 pt-1">
                                            <i class="mdi mdi-plus"></i>
                                        </div>

                                        <div class="desc">
                                            <h5 class="font-14 mb-1 pt-2 text-dark">Mellany Herrera</h5>
                                            <p class="text-muted">18 Sugerencias de amigos</p>
                                        </div>
                                        
                                        
                                    </div>
                                </a>

                                <a href="#" class="friends-suggestions-list">
                                    <div class="border-bottom position-relative">
                                        <div class="float-left mb-0 mr-3">
                                            <img src="assets/img/users/user-5.jpg" alt="" class="rounded-circle thumb-md">
                                        </div>
                                        <div class="suggestion-icon float-right mt-2 pt-1">
                                            <i class="mdi mdi-plus"></i>
                                        </div>

                                        <div class="desc">
                                            <h5 class="font-14 mb-1 pt-2 text-dark">Mellany Herrera</h5>
                                            <p class="text-muted">18 Sugerencias de amigos</p>
                                        </div>
                                        
                                        
                                    </div>
                                </a>

                                


                            </div>
                        </div>
                    </div>
                </div>
                <!--
                                  <div class="col-xl-4">
                                      <div class="card m-b-30">
                                          <div class="card-body">
                                              <h4 class="mt-0 header-title mb-4">Analitica de Resultados</h4>
                                              <div id="morris-line-example" class="morris-chart" style="height: 360px"></div>
              
                                          </div>
                                      </div>
              
                                  </div>
                -->

                <div class="col-xl-4">
                    <div class="card m-b-30">
                        <div class="card-body">
                            <h4 class="mt-0 header-title mb-4">Analitica de Resultados</h4>
                            <img id="morris-line-example" class="morris-chart"  style="height: 375px" src="assets/img/analytics.svg" alt=""/>
                            
                        </div>
                    </div>

                </div>

                <div class="col-xl-4">
                    <div class="card m-b-30">
                        <div class="card-body">

                            <h4 class="mt-0 header-title mb-4">Actividad Reciente</h4>
                            <ol class="activity-feed mb-0">
                                <li class="feed-item">
                                    <div class="feed-item-list">
                                        <p class="text-muted mb-1">Ahora</p>
                                        <p class="font-15 mt-0 mb-0">Asignacion de nuevas solicitudes: <b class="text-primary">Para Clase De Ensayo</b></p>
                                    </div>
                                </li>
                                <li class="feed-item">
                                    <p class="text-muted mb-1">Ayer</p>
                                    <p class="font-15 mt-0 mb-0">Nueva grafica de analitica: <b class="text-primary">Desarrolaldor Camilo</b></p>
                                </li>
                                <li class="feed-item">
                                    <p class="text-muted mb-1">2:30PM</p>
                                    <p class="font-15 mt-0 mb-0">Modificico calendario, <b class="text-primary"> Desarrolaldora Viviana</b></p>
                                </li>
                                <li class="feed-item pb-1">
                                    <p class="text-muted mb-1">12:48 PM</p>
                                    <p class="font-15 mt-0 mb-2">Registro Solicitud, <b class="text-primary">UX Mellany</b></p>
                                </li>

                            </ol>

                        </div>
                    </div>
                </div>
            </div>

            <!-- START ROW -->
            <div class="row">
                <div class="col-xl-12">
                    <div class="card m-b-30">
                        <div class="card-body">
                            <h4 class="mt-0 header-title mb-4">Usuarios del Sistema</h4>
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th scope="col">Nombre</th>
                                            <th scope="col">Estado</th>
                                            <th scope="col">Contacto</th>
                                            <th scope="col">Locación</th>
                                            <th scope="col" colspan="2">Fecha</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Philip Smead</td>
                                            <td><span class="badge badge-success">Activo</span></td>
                                            <td>
                                                <div>
                                                    <img src="assets/img/users/user-2.jpg" alt="" class="thumb-md rounded-circle mr-2"> Philip Smead
                                                </div>
                                            </td>
                                            <td>Bogotá D.C Suba 112d #185</td>
                                            <td>15/1/2018</td>

                                            <td>
                                                <div>
                                                    <a href="#" class="btn btn-primary btn-sm">Edit</a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Brent Shipley</td>
                                            <td><span class="badge badge-warning">Inactivo</span></td>
                                            <td>
                                                <div>
                                                    <img src="assets/img/users/user-3.jpg" alt="" class="thumb-md rounded-circle mr-2"> Brent Shipley
                                                </div>
                                            </td>
                                            <td>Bogotá D.C Soacha 114 #18</td>
                                            <td>16/1/2019</td>

                                            <td>
                                                <div>
                                                    <a href="#" class="btn btn-primary btn-sm">Edit</a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Robert Sitton</td>
                                            <td><span class="badge badge-success">Activo</span></td>
                                            <td>
                                                <div>
                                                    <img src="assets/img/users/user-4.jpg" alt="" class="thumb-md rounded-circle mr-2"> Robert Sitton
                                                </div>
                                            </td>
                                            <td>Bogotá D.C Martires 1 #45</td>
                                            <td>17/1/2019</td>

                                            <td>
                                                <div>
                                                    <a href="#" class="btn btn-primary btn-sm">Edit</a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Alberto Jackson</td>
                                            <td><span class="badge badge-danger">Cancelado</span></td>
                                            <td>
                                                <div>
                                                    <img src="assets/img/users/user-5.jpg" alt="" class="thumb-md rounded-circle mr-2"> Alberto Jackson
                                                </div>
                                            </td>
                                            <td>Bogotá D.C Usaquen 78 #45</td>
                                            <td>18/1/2019</td>

                                            <td>
                                                <div>
                                                    <a href="#" class="btn btn-primary btn-sm">Edit</a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>David Sanchez</td>
                                            <td><span class="badge badge-success">Activo</span></td>
                                            <td>
                                                <div>
                                                    <img src="assets/img/users/user-6.jpg" alt="" class="thumb-md rounded-circle mr-2"> David Sanchez
                                                </div>
                                            </td>
                                            <td>Bogotá D.C Suba 112d #845</td>
                                            <td>19/1/2019</td>

                                            <td>
                                                <div>
                                                    <a href="#" class="btn btn-primary btn-sm">Edit</a>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
            <!-- END ROW -->

        </div>
        <!-- end container-fluid -->
    </div>
    <!-- end wrapper -->

    <!-- Footer -->
    <footer class="footer">
        © 2019 - 2020 Stexo <span class="d-none d-sm-inline-block"> - Crafted with <i class="mdi mdi-heart text-danger"></i> by Themesdesign</span>.
    </footer>

    <!-- End Footer -->
    <%

        if (request.getAttribute(
                "mensajeError") != null) {  %>           
    ${mensajeError}
    <%} else {%>
    ${mensajeExito}
    <% }%>
    <!-- jQuery  -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/jquery.slimscroll.js"></script>
    <script src="assets/js/waves.min.js"></script>

    <!--Morris Chart-->
    <script src="../plugins/morris/morris.min.js"></script>
    <script src="../plugins/raphael/raphael.min.js"></script>

    <script src="assets/pages/dashboard.init.js"></script>

    <!-- App js -->
    <script src="assets/js/app.js"></script>

</body>

</html>