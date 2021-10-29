<%-- 
    Document   : ActualizarClaseEnsayo
    Created on : 2/08/2021, 01:10:20 AM
    Author     : as
--%>

<%@page import="ModeloVO.ClaseEnsayoVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <link href="assets/css/Style.css" rel="stylesheet" type="text/css"/>
        <title>Actualizar C.E</title>
    </head>
    <body>
            <%
            ClaseEnsayoVO clasensVO = (ClaseEnsayoVO) request.getAttribute("ClaseEnsayoConsultado");
            if (clasensVO != null) {
        %> 
        
          <form class="formulario" method="POST" action="ClaseEnsayo">
            <h4>resultado de la clase de ensayo consultada</h4>
            <input type="hidden" name="textId" value="<%=clasensVO.getClasEnsID()%>">
            <br>
            <input type="text" placeholder="Nombre"  name="txtNombre" value="<%=clasensVO.getClasEnsNombre()%>">
            <br>
            <select name="txtEstado" class="select">
                        <option selected value="<%=clasensVO.getClasEnsEstado()%> "><%=clasensVO.getClasEnsEstado()%> </option>
                        <%
                            if (clasensVO.getClasEnsEstado().equals("ACTIVO")) {


                        %>

                        <option value="INACTIVO" >INACTIVO</option>
                        <%                            } else {

                        %>
                        <option value="ACTIVO">ACTIVO</option>
                        <%}%>
                    </select>
            <br>
            <input type="hidden" id="opcion" name="opcion" value="3">
            <button type="submit" id="boton" class="submit-btn">Actualizar</button> 
            <button><a href="ConsultarClaseEnsayo.jsp">volver</a></button>
        </form>
          <%}%>
          <%
            if (request.getAttribute("mensajeError") != null) {  %>  

        ${mensajeError}
        <%} else {%>
        <div style="color: darkseagreen;">${mensajeExito}</div>
        <% }%>
    </body>
</html>

