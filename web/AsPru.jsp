<%-- 
    Document   : AsPru
    Created on : 9/09/2021, 10:21:32 PM
    Author     : Jorgito Oooome
--%>

<%@page import="ModeloDAO.PruebaDAO"%>
<%@page import="ModeloVO.PruebaVO"%>
<%@page import="ModeloDAO.AspectoDAO"%>
<%@page import="ModeloVO.AspectoVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModeloVO.Aspe_PruVO"%>
<%@page import="ModeloDAO.Aspe_PruDAO"%>
<%@include file="sesiones.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
%>
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
        <title>Terre | Aspecto-Prueba </title>

        <link rel="shortcut icon" href="assets/img/icon/icono.png">
        <meta content="Responsive admin theme build on top of Bootstrap 4" name="description" />
        <meta content="Themesdesign" name="author" />
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- DataTables -->
        <link href="plugins/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="plugins/datatables/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />

        <!-- Responsive datatable examples -->
        <link href="plugins/datatables/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />

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
                                        <%=Rol%> 

                                    </a>
                                </li>
                                <li class="dropdown notification-list list-inline-item d-none d-md-inline-block">
                                    <a class="nav-link dropdown-toggle arrow-none waves-effect" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                        <%=Nombre%> 

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
                                            <%if (Rol.equals("GERENTE")) {%>
                                            <a class="dropdown-item d-block" href="configuracion.jsp"><span class="badge badge-success float-right"></span><i class="mdi mdi-settings"></i> Configuraci??n</a><%}%>
                                            <div class="dropdown-divider"></div>
                                            <form action="Sesiones" method="POST"><button type="submit" style="
                                                                                          background: none;
                                                                                          color: inherit;
                                                                                          border: none;
                                                                                          padding: 0;
                                                                                          font: inherit;
                                                                                          cursor: pointer;
                                                                                          outline: inherit;">
                                                    <a class="dropdown-item text-danger" ><i class="mdi mdi-power text-danger"></i> Cerra Sesi??n</a></form></button>
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
                                        <%if (Rol.equals("GERENTE") || Rol.equals("SECRETARIA")) {

                                        %>
                                        <li class="has-submenu">
                                            <a href="consultarUsuario.jsp">Usuarios </a>

                                            <ul class="submenu">
                                                <li><a href="consultarFuncionario.jsp">Funcionario</a></li>  

                                            </ul>
                                        </li>
                                        <%}%>

                                        <%if (Rol.equals("GERENTE") || Rol.equals("SECRETARIA")) {

                                        %>
                                        <li>
                                            <a href="consultarCliente.jsp">Clientes </a>

                                        </li>
                                        <%}%>
                                        <%if (Rol.equals("GERENTE") || Rol.equals("SECRETARIA")) {

                                        %>
                                        <li>
                                            <a href="consultarSolicitud.jsp">Solicitudes </a>
                                        </li>
                                        <%}%>

                                        <li class="has-submenu">
                                            <a href="#">Laboratorio</a>
                                            <ul class="submenu">
                                                <%if (Rol.equals("GERENTE") || Rol.equals("TECNICO")) {

                                                %>
                                                <li><a href="consultarMuestra.jsp">Muestra</a></li>
                                                    <%}%>
                                                <li><a href="Prueba.jsp">Prueba</a></li> 

                                                <%if (Rol.equals("GERENTE") || Rol.equals("INGENIERO") || Rol.equals("TECNICO")) {

                                                %>
                                                <li><a href="Aspecto.jsp">Aspecto</a></li>
                                                    <%}%>
                                                <li><a href="AsPru.jsp">Aspecto-Prueba</a></li>

                                                <%if (Rol.equals("GERENTE") || Rol.equals("INGENIERO")) {

                                                %>
                                                <li><a href="Procedimiento.jsp">Procedimiento</a></li>
                                                    <%}%>
                                                    <%if (Rol.equals("GERENTE") || Rol.equals("TECNICO")) {

                                                    %>
                                                <li><a href="consultarTipoMuestra.jsp">Tipo Muestra</a></li>
                                                    <%}%>

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
                            <h4 class="page-title"></h4>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-right">
                                <li class="breadcrumb-item"><a href="javascript:void(0);">Terre</a></li>
                                <li class="breadcrumb-item"><a href="javascript:void(0);">Modulos</a></li>
                                <li class="breadcrumb-item active">Aspecto-Prueba</li>
                            </ol>
                        </div>
                    </div>
                    <!-- end row -->
                </div>

                <div class="row">
                    <div class="col-12">
                        <div class="card m-b-30">
                            <div class="card-body">
                                <!-- modal agregar registro-->

                                <button style="margin: 3px; float: right; background-color: #FFF;" class="btn btn-success btn-lg " >                                 
                                    <form method="post" action="GenerarPDF.jsp" target="_black">
                                        <!--<a href="assets/reportes/Reporte1.jrxml"></a>
                                         <a href="assets/reportes/GenerarPDF.jsp"></a>-->
                                        <input style="margin: 1px; float: right; height: 20px; background-color: #FFF; border: none" class="submit" type="submit" value="Generar Reporte">
                                        <input type="hidden" value="ReporteAspPru.jasper" name="nombreReporte">
                                    </form>
                                </button>
                                

                                <!-- end modal-->
                                <h4 class="mt-0 header-title">Aspecto-Prueba</h4>

                                <p class="sub-title">
                                    Este Modulo permitira al empleado registrar el resultado de la prueba con su aspecto realizado 
                                </p>


                                <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                    <thead>
                                        <tr>

                                            <th>Id</th>
                                            <th>Prueba</th>
                                            <th>Aspecto</th>
                                            <th>Resultado</th>
                                            <th>Estado</th>
                                                <%
                                                    if (Rol.equals("GERENTE") || Rol.equals("INGENIERO") || Rol.equals("TECNICO")) {
                                                %>
                                            <th>Actualizar</th>
                                            <th>Inacivar</th>
                                                <%}%>

                                        </tr> 
                                    </thead>
                                    <tbody>

                                        <%
                                            Aspe_PruVO asprVO = new Aspe_PruVO();
                                            Aspe_PruDAO asprDAO = new Aspe_PruDAO();

                                            ArrayList<Aspe_PruVO> listaAspe = asprDAO.Listar();
                                            for (int i = 0; i < listaAspe.size(); i++) {

                                                asprVO = listaAspe.get(i);
                                        %>


                                        <tr>
                                            <td><%=asprVO.getPRU_ASP_ID()%></td>
                                            <td><%=asprVO.getFK_Prueba()%></td>
                                            <td><%=asprVO.getFK_Aspecto()%></td>
                                            <td><%=asprVO.getPRU_ASP_RESULTADO()%></td>
                                            <td><%=asprVO.getPRU_ASP_ESTADO()%></td>


                                            <!-- Button to trigger modal -->

                                            <%
                                                if (Rol.equals("GERENTE") || Rol.equals("INGENIERO") || Rol.equals("TECNICO")) {
                                            %>
                                            <td>
                                                <button style="margin: 3px" class="btn btn-info btn-lg" data-toggle="modal" data-target="#modal<%=i%>">
                                                    <i class="fas fa-edit"></i>
                                                </button>

                                                <!-- Modal -->
                                                <div class="modal fade" id="modal<%=i%>" role="dialog">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <!-- Modal Header -->
                                                            <div class="modal-header">
                                                                <h4 class="modal-title" id="myModalLabel">Actualizar Prueba</h4>
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <!-- Modal Body -->

                                                            <div class="modal-body">
                                                                <p class="statusMsg"></p>

                                                                <form class="formulario" method="post" action="Aspe_Pru" id="update-AsPru-form">
                                                                    
                                                                    <div class="form-group">
                                                                        <label for="Prueba">Prueba</label><br>
                                                                        <select name="Prueba" class="form-control">
                                                                            <%

                                                                                PruebaVO pruVO = new PruebaVO();
                                                                                PruebaDAO pruDAO = new PruebaDAO(pruVO);

                                                                                ArrayList<PruebaVO> listaPrueba = pruDAO.Listar1();
                                                                                for (int a = 0; a < listaPrueba.size(); a++) {

                                                                                    pruVO = listaPrueba.get(a);
                                                                            %>
                                                                            <option value="<%=pruVO.getPru_id()%>" <%=asprVO.getFK_Prueba().equals(pruVO.getPru_nombre()) ? "selected" : ""%> ><%=pruVO.getPru_nombre()%></option>
                                                                            <%}%>
                                                                        </select>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="">Aspecto</label><br>
                                                                        <select name="Aspecto" class="form-control">
                                                                            <%

                                                                                AspectoVO aspVO = new AspectoVO();
                                                                                AspectoDAO aspDAO = new AspectoDAO(aspVO);

                                                                                ArrayList<AspectoVO> listaAspecto = aspDAO.Listar();
                                                                                for (int a = 0; a < listaAspecto.size(); a++) {

                                                                                    aspVO = listaAspecto.get(a);
                                                                            %>
                                                                            <option  value="<%=aspVO.getASP_ID()%>" <%=asprVO.getFK_Aspecto().equals(aspVO.getASP_NOMBRE()) ? "selected" : ""%> ><%=aspVO.getASP_NOMBRE()%></option>
                                                                            <%}%>
                                                                        </select>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label>Resultado</label>
                                                                        <input type="text" name="Resultado" class="form-control" id="inputName" value="<%=asprVO.getPRU_ASP_RESULTADO()%>" placeholder="Ingrese el id"/>
                                                                        </br>
                                                                    </div>

                                                                    <div class="modal-footer">
                                                                        <input type="hidden" name="Id"  readonly value="<%=asprVO.getPRU_ASP_ID()%>" />
                                                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                                                                        <input type="hidden" id="opcion" name="opcion" value="2">
                                                                        <button type="submit" class="btn btn-info submitBtn">Actualizar</button>

                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>

                                                <form method="post" action="Aspe_Pru" id="delete">  
                                                    <div class="frm-g-input">
                                                        <input type="hidden" placeholder="Id"  name="Id" value="<%=asprVO.getPRU_ASP_ID()%>">
                                                        <input type="hidden" placeholder="estado"  name="Estado" value="INACTIVO">
                                                        <input type="hidden" id="opcion" name="opcion" value="5">
                                                        <button style="margin: 3px" type="submit" id="boton" class="btn btn-danger btn-lg"><i class="fas fa-trash-alt"></i></button> 
                                                    </div>
                                                </form>

                                            </td>

                                            <%}%> <%}%>
                                        </tr>

                                    <script src="assets/js/validar.js" type="text/javascript"></script>

                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div> <!-- end col -->
                </div> <!-- end row -->
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

                <!-- Required datatable js -->
                <script src="../plugins/datatables/jquery.dataTables.min.js"></script>
                <script src="../plugins/datatables/dataTables.bootstrap4.min.js"></script>
                <!-- Buttons examples -->
                <script src="../plugins/datatables/dataTables.buttons.min.js"></script>
                <script src="../plugins/datatables/buttons.bootstrap4.min.js"></script>
                <script src="../plugins/datatables/jszip.min.js"></script>
                <script src="../plugins/datatables/pdfmake.min.js"></script>
                <script src="../plugins/datatables/vfs_fonts.js"></script>
                <script src="../plugins/datatables/buttons.html5.min.js"></script>
                <script src="../plugins/datatables/buttons.print.min.js"></script>
                <script src="../plugins/datatables/buttons.colVis.min.js"></script>
                <!-- Responsive examples -->
                <script src="../plugins/datatables/dataTables.responsive.min.js"></script>
                <script src="../plugins/datatables/responsive.bootstrap4.min.js"></script>

                <!-- Datatable init js -->
                <script src="assets/pages/datatables.init.js"></script>  

                <!-- App js -->
                <script src="assets/js/app.js"></script>



                <!-- jQuery library MODAL-->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

                <!-- Latest minified bootstrap js MODAL-->
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

                <script src='https://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.js'></script>
                <script src="assets/js/validacionesCampo/AsPru/actualizarClaseEnsayo.js" type="text/javascript"></script>
                

                <!-- Bootstrap core JavaScript-->
                <script src="assets/vendor/jquery/jquery.min.js"></script>



                <!-- Core plugin JavaScript-->
                <script src="assets/vendor/jquery-easing/jquery.easing.min.js"></script>

                <!-- Custom scripts for all pages-->
                <script src="assets/js/sb-admin-2.min.js"></script>

                <!-- Page level plugins -->
                <script src="assets/vendor/datatables/jquery.dataTables.min.js"></script>
                <script src="assets/vendor/datatables/dataTables.bootstrap4.min.js"></script>

                <!-- Page level custom scripts -->
                <script src="assets/js/demo/datatables-demo.js"></script>

                <%
                    if (request.getAttribute("mensajeError") != null) {  %>           
                ${mensajeError}
                <%} else {%>
                ${mensajeExito}
                <% }%>


                </body>
                </html>
