<%-- 
    Document   : actualizarUsuario
    Created on : 7/07/2021, 08:08:46 PM
    Author     : Camilo
--%>

<%@page import="ModeloVO.RolVO"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="sesiones.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/css/EstiloModulo.css" rel="stylesheet" type="text/css"/>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <title>Consultar Usuario</title>
    </head>
    <%        UsuarioVO usuVO = (UsuarioVO) request.getAttribute("UsuarioConsultado");
        if (usuVO != null) {


    %>
    <body>
        <div class="Contenido">
            <div class="inputs">
                <a href="consultarUsuario.jsp"><button type="submit" id="boton" class="submit-btn">Atras</button></a>
                <form method="post" action="Usuario">
                    <h2 class="Titulo">Actualizar: <%=usuVO.getUsuNombre()%></h2>  

                    <input type="text" name="txtNombre" value="<%=usuVO.getUsuNombre()%>">
                    <input type="text" name="txtCorreo" value="<%=usuVO.getUsuCorreo()%>">
                    <input type="hidden" name="textId" value="<%=usuVO.getUsuId()%>">

                    <select name="txtRolId" class="form-select form-select-sm">
                        <option value="<%=usuVO.getUsuPassword()%>" selected><%=usuVO.getUsuRol()%></option>
                        <%

                            RolDAO rolDAO = new RolDAO();
                            for (RolVO rolVO : rolDAO.listar()) {
                                if (rolVO.getRolNombre().equals(usuVO.getUsuRol())) {

                                } else {
                        %> 
                        <option value="<%=rolVO.getRolId()%>"><%=rolVO.getRolNombre()%></option>
                        <%}
                            }%>
                    </select>
                    <select name="txtEstado" class="select">
                        <option selected><%=usuVO.getUsuEstado()%></option>
                        <%
                            if (usuVO.getUsuEstado().equals("ACTIVO")) {


                        %>

                        <option value="INACTIVO" >INACTIVO</option>
                        <%                            } else {

                        %>
                        <option value="ACTIVO">ACTIVO</option>
                        <%}%>
                    </select>


                    <br><br><input type="submit" class="submit-btn" value="Actualizar">
                    </div>
                    <input type="hidden" value="4" name="opcion">

                </form>
                </body>

                <body>


                    <%} else {


                    %>

                    <%                        
                    if (request.getAttribute("mensajeError") != null) {  %>           
                    ${mensajeError}
                    <%} else {%>
                    ${mensajeExito}
                    <% }%>
                    <% }
                        
                    %>

                </body>


            </div>


</html>
