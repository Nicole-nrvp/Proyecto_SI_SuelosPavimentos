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
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="Usuario">
            <input type="text" class="input-field" placeholder="Nombre" required>
            <select name="TxtRolid">
                <option>Seleccione...</option>
                <%
                RolDAO rolDAO = new RolDAO();
                for (RolVO rolVO : rolDAO.listar()) {
        %> 
        <option value="<%=rolVO.getRolId()%>"><%=rolVO.getRolNombre()%></option>
        <%}%>
            </select><br><br>
            <input type="email" class="input-field" placeholder="Correo" required>
            <input type="password" class="input-field" placeholder="Ingresar Clave" required>
            <input type="password" class="input-field" placeholder="Confirmar Clave" required name="txtClave">
            <button type="submit" class="submit-btn">Registrar</button>
            <input type="hidden" id="opcion" name="opcion" value="2">
            <%
                    if (request.getAttribute("mensajeError") != null) {  %>

                        <h2 id="Error">${mensajeError}</h2>
                        <%} else {%>
                            <h2 id="Error">${mensajeExito}</h2>
                            <% }%>

        </form>
    </body>
</html>
