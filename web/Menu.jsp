<%-- 
    Document   : menu.jsp
    Created on : 21/06/2021, 08:27:19 PM
    Author     : Camilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="sesiones.jsp" %>
<!DOCTYPE html>
<html  lang="es">
    <head> 

        <!-- Template Main CSS File -->
        <link href="assets/css/estiloIndex.css" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" href="assets/img/icon/icono.png">
        <meta charset="UTF-8">
        <title>Terre | Menú</title>
        <link href="assets/css/estiloMenu.css" rel="stylesheet" type="text/css"/>

        <!-- Favicons -->
        <link href="assets/img/assets/img/mesa.ico" rel="icon">
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
                    <a href="PaginaPrincipal.jsp">Cerrar Sesión</a>
                </nav>
            </div>
        </header>
        <div class="capa"></div>
        <!--	--------------->
        <input type="checkbox" id="btn-menu">
        <div class="container-menu">
            <div class="cont-menu">
                <nav>
<%
                String rol = "";
                FuncionarioVO funVO = new FuncionarioVO();
                funVO = (FuncionarioVO) buscarSesion.getAttribute("DatosCargados");

                rol = usuVO2.getUsuRol();
                if (rol.equals("SECRETARIA")) {
                
                
        %>
                    <a href="consultarUsuario.jsp">Usuarios</a>
                    <a href="consultarFuncionario.jsp">Funcionario</a>
                    <a href="consultarCliente.jsp">Cliente</a>
                    <a href="Solicitud.jsp">Solicitud</a>
                    <a href="Muestra.jsp">Muestra</a>
                    <a href="Prueba.jsp">Prueba</a> 
                    <a href="Procedimiento.jsp">Procedimiento</a>
                    <a href="Aspecto.jsp">Aspecto</a>
                    <a href="AsPru.jsp">Aspecto-Prueba</a>
                    <a href="ConsultarTipoEnsayo.jsp">Tipo de ensayo</a>
                    <a href="ConsultarClaseEnsayo.jsp">Clase Ensayo</a>
                    <%}%>
                </nav>
                <label for="btn-menu">✖️</label>
            </div>
        </div>
    </body>
</html>
