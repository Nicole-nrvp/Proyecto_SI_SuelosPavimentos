

<%@page import="ModeloVO.SolicitudVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

        <title>Actualizar Solicitud</title>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </head>
    <body > 
    <center>

        <h1>Actualizar Cliente</h1>

        <%

            SolicitudVO solVO = (SolicitudVO) request.getAttribute("solicitudConsultado");
            if (solVO != null) {

        %> 
        <form method="post" action="Solicitud">


            Codigo <br>
            <input type="number" name="textSolId" value="<%=solVO.getSolId()%>" readonly>
            <br>
            <br>
            Fecha Inicio <br>
            <input type="text" name="textSolFechaInicio" value="<%=solVO.getSolFechaInicio()%>" readonly><br>
            <br>
            Fecha Fin <br>
            <input type="text" name="textSolFechaFin" value="<%=solVO.getSolFechaFin()%>"><br>
            <br>
            Nombre<br>
            <input type="text" name="textSolNombre" value="<%=solVO.getSolNombre()%>"><br>
            <br>
             Nombre Cliente<br>
            <input type="text" name="textFkCliente" value="<%=solVO.getClienteId()%>" readonly><br>
            <br>
            Estado<br>
            <select name="textSolEstado" class="select">
                <option selected><%=solVO.getSolEstado()%></option>
                <%
                    if (solVO.getSolEstado().equals("ACTIVO")) {


                %>

                <option value="INACTIVO" >INACTIVO</option>
                <%                            } else {

                %>
                <option value="ACTIVO">ACTIVO</option>
                <%}%>
            </select><br>
            <br>
            <button>Actualizar</button>
            <input type="hidden" value="2" name="opcion">

        </form>
        <%}%>
        <br>
        <br>
        <a href="consultarSolicitud.jsp"><input type="submit" value="Volver" name="Volver"></a> 
        <br>
        <br>


        <div style="color: red;">
            <%
                if (request.getAttribute("mensajeError") != null) {  %>           
            ${mensajeError}
            <%} else {%>
            ${mensajeExito}
            <% }%>
        </div>
    </center>


</body>
</html>

