<%-- 
    Document   : menu
    Created on : 7/08/2021, 07:21:38 PM
    Author     : Camilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="sesiones.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Menu</h1>
        <h1>Bienvenido <%=Nombre%></h1>
        <%
                String rol = "";
                FuncionarioVO funVO = new FuncionarioVO();
                funVO = (FuncionarioVO) buscarSesion.getAttribute("DatosCargados");

                rol = usuVO2.getUsuRol();
                if (rol.equals("SECRETARIA")) {
        %>
        <a href="cambiarClave.jsp"><button type="submit" id="boton" class="submit-btn">CambiarClave</button></a>
        <a href="consultarUsuario.jsp"><button type="submit" id="boton" class="submit-btn">Consultar Usuario</button></a>
        <a href="consultarFuncionario.jsp"><button type="submit" id="boton" class="submit-btn">Consultar Funcionario</button></a>
        <form method="post" action="Sesiones">
            <input type="submit" value="Cerrar Sesion">
        </form>
        <form method="post" action="Usuario">                             

            <input type="hidden" placeholder="Nombre"  name="textId" value="<%=Id%>">
            <input type="hidden" id="opcion" name="opcion" value="10">
            <button type="submit" id="boton" class="submit-btna">Editar Mis Datos</button> 
        </form>
        <%
            }


        %>

        <%             if (rol.equals("GERENTE")) {
        %>
        <a href="consultarUsuario.jsp"><button type="submit" id="boton" class="submit-btn">Consultar Usuario</button></a>
         <a href="cambiarClave.jsp"><button type="submit" id="boton" class="submit-btn">CambiarClave</button></a>
        <a href="registrarUsuario.jsp"><button type="submit" id="boton" class="submit-btn">Registrar Usuario</button></a>
        <a href="consultarFuncionario.jsp"><button type="submit" id="boton" class="submit-btn">Consultar Funcionario</button></a>
        <a href="mail.jsp"><button type="submit" id="boton" class="submit-btn">Enviar Correo</button></a>
        
        <form method="post" action="Sesiones">
            <input type="submit" value="Cerrar Sesion">
        </form>
        <form method="post" action="Usuario">                             

            <input type="hidden" placeholder="Nombre"  name="textId" value="<%=funVO.getFunId()%>">
            <input type="hidden" id="opcion" name="opcion" value="10">
            <button type="submit" id="boton" class="submit-btna">Editar Mis Datos</button> 
        </form>
        <%}%>
        <% if (rol.equals("INGENIERO")) {
        %>
        <a href="mail.jsp"><button type="submit" id="boton" class="submit-btn">Enviar Correo</button></a>
        <form method="post" action="Sesiones">
            <input type="submit" value="Cerrar Sesion">
        </form>
        <form method="post" action="Usuario">                             

            <input type="hidden" placeholder="Nombre"  name="textId" value="<%=funVO.getFunId()%>">
            <input type="hidden" id="opcion" name="opcion" value="10">
            <a href="cambiarClave.jsp"><button type="submit" id="boton" class="submit-btn">CambiarClave</button></a>
            <button type="submit" id="boton" class="submit-btna">Editar Mis Datos</button> 
        </form>
        <%
            }%>
        <%             if (rol.equals("TECNICO")) {
        %>
        <a href="mail.jsp"><button type="submit" id="boton" class="submit-btn">Enviar Correo</button></a>
        <a href="cambiarClave.jsp"><button type="submit" id="boton" class="submit-btn">CambiarClave</button></a>
        <form method="post" action="Sesiones">
            <input type="submit" value="Cerrar Sesion">
        </form>
        <form method="post" action="Usuario">                             

            <input type="hidden" placeholder="Nombre"  name="textId" value="<%=funVO.getFunId()%>">
            <input type="hidden" id="opcion" name="opcion" value="10">
            <button type="submit" id="boton" class="submit-btna">Editar Mis Datos</button> 
        </form>
        <%
            }%>
        <%
            if (request.getAttribute("mensajeError") != null) {  %>           
        ${mensajeError}
        <%} else {%>
        ${mensajeExito}
        <%}
            %>      
    </body>
</html>