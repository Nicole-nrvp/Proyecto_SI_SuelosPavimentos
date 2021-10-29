<%-- 
    Document   : OlvidoContraseña
    Created on : 28/08/2021, 02:26:50 PM
    Author     : Camilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </head>
    <body>

        <h1>Olvido de Constraseña</h1>
        <form method="Post" action="Usuario">
            <div id="g-txtCorreo">
                <label for="txtCorreo">Correo</label>
                <div class="frm-g-input">
                    <input type="text" name="txtCorreo" id="txtCorreo" class="frm-input" placeholder="Ingrese su Correo"/><br>
                    <label>Si su correo se encuentra en el sistema se enviara una nueca contraseña con la que podra ingresar y cambiar su contraseña</label><br><br>
                    <button>Enviar</button>
                    <input type="hidden" name="opcion" value="12"/>            
                </div>
            </div>
        </form>
        <a href="Login.jsp"><button type="submit">Atras</button></a> 
        <%
    if (request.getAttribute("mensajeError") != null) {  %>           
        ${mensajeError}
        <%} else {%>
        ${mensajeExito}
        <% }%>

    </body>
</html>
