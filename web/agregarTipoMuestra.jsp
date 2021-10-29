<%-- 
    Document   : registrarUsuario
    Created on : 07-may-2021, 9:13:12
    Author     : usuario
--%>

<%@page import="ModeloVO.TipoMuestraVO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

        <link href="Estilos/estiloRegistrarV.css" rel="stylesheet" type="text/css"/>
        <title>Registrar Tipo Muestra</title>
    </head>
    <body > 
    <center> 
        <h1>REGISTRO DE TIPO DE MUESTRAS</h1>
        <form method="post" action="TipoMuestra">

            <table>
                <tr>
                    <th>  


                        Nombre <br>
                        <input type="text" name="textMueNombre"><br>
                        <br>
                        Estado<br>
                        <select name="textMueEstado" >
                            <option> ACTIVO </option>
                            <option> INACTIVO </option>
                        </select><br>

                    </th>
                </tr>
            </table>
            <br>
            <button>Registrar Tipo de Muestra</button>
            <input type="hidden" value="3" name="opcion">

        </form>
        <br>
        <a href="Menu.jsp"><input type="submit" value="Volver al Menù" name="Volver al Menù"></a>

        <div style="color: red;">


            <%                if (request.getAttribute(
                        "mensajeError") != null) {  %>  

            ${mensajeError}
            <%} else {%>
            <div style="color: darkseagreen;">${mensajeExito}</div>
            <% }%>

        </div>
    </center>
</body>
</html>
