

<%@page import="ModeloVO.TipoMuestraVO"%>
<%@page import="ModeloVO.MuestraVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

        <link href="Estilos/estiloActualizarV.css" rel="stylesheet" type="text/css"/>
        <title>Actualizar Muestra</title>
    </head>
    <body > 
    <center>

        <h1>Actualizar Muestra</h1>

        <%

            TipoMuestraVO tipmueVO = (TipoMuestraVO) request.getAttribute("tipomuestraConsultado");
            if (tipmueVO != null) {

        %> 
        <form method="post" action="TipoMuestra">


            <input type="hidden" name="textMueId" value="<%=tipmueVO.getTipMueId()%>">
            <br>
            <br>
            Nombre <br>
            <input type="text" name="textMueNombre" value="<%=tipmueVO.getTipMueNombre()%>"><br>
            <br>
             Estado<br>
                        <select name="textMueEstado" class="select">
                        <option selected><%=tipmueVO.getTipMueEstado()%></option>
                        <%
                            if (tipmueVO.getTipMueEstado().equals("ACTIVO")) {


                        %>

                        <option value="INACTIVO" >INACTIVO</option>
                        <%                            } else {

                        %>
                        <option value="ACTIVO">ACTIVO</option>
                        <%}%>
                    </select>
                        <br>
            
            <button>Actualizar</button>
            
            <input type="hidden" value="2" name="opcion">

        </form>
        <%}%>
        <br>
        <br>
        <a href="consultarTipoMuestra.jsp"><input type="submit" value="Volver" name="Volver"></a> 
        <br>
        <br>
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

