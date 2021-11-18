<%-- 
    Document   : cambiarContraseña
    Created on : 03-sep-2021, 15:41:51
    Author     : Juan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="sesiones.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        
  <!-- Template Main CSS File -->
  <link href="assets/css/estiloIndex.css" rel="stylesheet" type="text/css"/>
  <link rel="shortcut icon" href="assets/img/icon/icono.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="https://kit.fontawesome.com/3c31f4977d.js" crossorigin="anonymous"></script>
        <link href="assets/css/validaciones.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="Usuario" id="frm-usuario" >
         
            <div id="g-nombre">
                <label for="nombre">Contraseña Anterior</label>
                <div class="frm-g-input">
                    <input type="password" name="txtEstado"  class="frm-input" />
                    
                    
                </div>
            </div><br>
            
        <div id="g-txtClave">
                <label for="txtClave">Contraseña Nueva</label>
                <div class="frm-g-input">
                    <input type="password" name="txtClave" id="txtClave" class="frm-input" />
                    <i class="frm-icono fas fa-exclamation-circle"></i>
                    <span class="msn-error">Debe tener 8 caracteres,1 símbolo,1 min-mayúscula, y numeros</span>
                </div>
            </div>

            <div id="g-txtClave2">
                <label for="txtClave2">Confirmar Contraseña</label>
                <div class="frm-g-input">
                    <input type="password" name="txtClave2" id="txtClave2" class="frm-input" />
                    <i class="frm-icono fas fa-exclamation-circle"></i>
                    <span class="msn-error">Contraseñas ingresadas no coinciden</span>
                </div>
            </div>
            <input type="hidden" id="opcion" name="opcion" value="13">
            <input type="hidden" name="txtCorreo" value="<%=usuVO2.getUsuCorreo()%>">
            <button  class="frm-input">Cambiar</button>
            </form>
         <script src="assets/js/validaciones_1.js" type="text/javascript"></script>
         <%
                    if (request.getAttribute("mensajeError") != null) {  %>           
                ${mensajeError}
                <%} else {%>
                ${mensajeExito}
                <% }%>
    </body>
</html>
