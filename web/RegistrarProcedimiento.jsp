<%-- 
    Document   : RegistrarProcedimiento
    Created on : 31-jul-2021, 22:38:57
    Author     : laura
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Estilos/estiloRegistrarV.css" rel="stylesheet" type="text/css"/>
        <title>Registrar Procedimiento</title>
    </head>
    <body>
    <center> 
                    <h1>Registrar Procedimiento</h1>
            <form method="post" action="ProcedimientoControlador" id="frm-usuario">

                        Nombre
                        <br>
                        <input type="text" name="Nombre" placeholder="Nombre" required>
                           
                        <input type="hidden" name="Estado" value="ACTIVO">

                    <BUTTON> Registrar Procedimiento</BUTTON>
                    <input type="hidden"  value="1" name="opciones">
 
            </form>
            <br>
        <a href="Procedimiento.jsp"><input type="submit" value="Volver" name="Volver"></a>

        <div style="color: red;">
            <%
            if (request.getAttribute("mensajeError") != null) {  %>           
            ${mensajeError}
            <%}else {%>
            ${mensajeExito}
            <% }%>
        </div>
    </center>                     
    </body>
</html>