<%-- 
    Document   : RegistrarUsuario
    Created on : 22/06/2021, 08:09:22 PM
    Author     : Camilo
--%>

<%@page import="ModeloVO.RolVO"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/css/EstiloModulo.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="Contenido">
        <a href="Menu.jsp"><button type="submit" id="boton" class="submit-btn">Atras</button></a>
        <form method="post" action="Usuario">                             
            
                <div class="inputs">
                    <h2 class="Titulo">Registrar Usuario</h2>
                    <input type="email" placeholder="Correo" name="txtCorreo">
                    <input type="text" placeholder="Nombre"  name="txtNombre">
                    <input type="password" class="input-field" placeholder="Ingresar Clave"  id="Contra2" name="txtClave">

                    <input type="password" class="input-field" placeholder="Confirmar Clave"  id="Contra1">
                    <select name="txtRolId" class="select">
                        <option>Seleccione...</option>
                        <%
                            RolDAO rolDAO = new RolDAO();
                            for (RolVO rolVO : rolDAO.listar()) {
                        %> 
                        <option value="<%=rolVO.getRolId()%>"><%=rolVO.getRolNombre()%></option>
                        <%}%>
                    </select>
                    <button type="submit" id="boton" class="submit-btn">Registrar</button>
                    <input type="hidden" id="opcion" name="opcion" value="2">
                    <%
                if (request.getAttribute("mensajeError") != null) {  %>

                    <h2 id="Error" class="Error">${mensajeError}</h2>
                    <%} else {%>
                    <h2 id="Error" class="Exito">${mensajeExito}</h2>
                    <% }%>
                    </form>    
                    <script src="assets/js/Contras.js" type="text/javascript"></script>
                    
                    
                </div>
            </div>
    </body>
</html>
