

<%@page import="ModeloVO.MuestraVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

        <title>Actualizar Muestra</title>
    </head>
    <body > 
    <center>

        <h1>Actualizar Muestra</h1>

        <%

            MuestraVO mueVO = (MuestraVO) request.getAttribute("muestraConsultado");
            if (mueVO != null) {

        %> 
        <form method="post" action="Muestra">

            Code <br>
            <input type="number" name="textMueId" value="<%=mueVO.getMueId()%>" readonly>
            <br>
            <br>
            Nombre <br>
            <input type="text" name="textMueNombre" value="<%=mueVO.getMueNombre()%>"><br>
            <br>
            Observacion <br>
            <input type="text" name="textMueObservacion" value="<%=mueVO.getMueObservacion()%>"><br>
            <br>
            Descripcion<br>
            <input type="text" name="textMueDescripcion" value="<%=mueVO.getMueDescripcion()%>"><br>
            <br>
            <br>
            FK Tipo Muestra<br>
            <input type="number" name="textfkTipoMuestra" value="<%=mueVO.getFkTipoMuestra()%>" readonly><br>
            <br>
            <br>
            Estado<br>
            <select name="textMueEstado" class="select">
                        <option selected><%=mueVO.getMueEstado()%></option>
                        <%
                            if (mueVO.getMueEstado().equals("ACTIVO")) {


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
        <a href="consultarMuestra.jsp"><input type="submit" value="Volver" name="Volver"></a> 
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

