<%-- 
    Document   : RegistrarAP
    Created on : 9/09/2021, 11:50:27 PM
    Author     : Jorgito Oooome
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Estilos/estiloRegistrarV.css" rel="stylesheet" type="text/css"/>
        <title>Registrar AP</title>
    </head>
    <body>
    <center> 
                    <h1>Registrar AP</h1>
            <form method="post" action="Aspe_Pru" id="frm-usuario">

                            Prueba
                            <br>
                            <input type="text" name="Prueba" placeholder="Prueba" required>  <br>  <br>
                            Aspecto
                            <br>
                            <input type="text" name="Aspecto" placeholder="Aspecto"required>  <br>  <br>
                            Resultado
                            <br>
                            <input type="text" name="Resultado" placeholder="Resultado"required>  <br>  <br>
                            
                        <input type="hidden" name="Estado" value="ACTIVO">

                    <BUTTON> Registrar AP</BUTTON>
                    <input type="hidden"  value="1" name="opcion">
 
            </form>
            <br>
        <a href="AsPru.jsp"><input type="submit" value="Volver" name="Volver"></a>

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