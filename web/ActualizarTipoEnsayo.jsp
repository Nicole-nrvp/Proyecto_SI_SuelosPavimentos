<%-- 
    Document   : ActualizarTipoEnsayo
    Created on : 8/08/2021, 05:08:38 PM
    Author     : as
--%>

<%@page import="java.lang.String"%>
<%@page import="ModeloVO.TipoEnsayoVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="assets/css/Style.css" rel="stylesheet" type="text/css"/>
        <title>Mostrar T.E</title>
    </head>
    <body>
        <%
            TipoEnsayoVO tipensVO = (TipoEnsayoVO) request.getAttribute("TipoEnsayoConsultado");
            if (tipensVO != null) {

                                    String fk = "";
                        if (tipensVO.getFK_Clas_Ensayo().equals("1")) {
                                            fk = "ESPECIAL";
                                        } else {
                                            fk = "GENERAL";
                                        }
                %>
        
        <h1>resultado de la clase de ensayo consultada</h1>
          <form class="formulario" method="POST" action="TipoEnsayo">
            
            <input type="hidden" name="textId" value="<%=tipensVO.getTip_Ens_ID()%>">
            <br>
            <input type="readonly" placeholder="Nombre"  name="txtNombre" value="<%=tipensVO.getTip_Ens_Nombre()%>">
            <br>
            <select name="txtClaseEnsayo" class="select">
                        <option selected value="<%=fk%> "><%=fk%> </option>
                        
                        <option value="2">GENERAL</option>
                        
                    </select>
            <br>
            <label>estado: <%=tipensVO.getTip_Ens_Estado()%> </label>
            <select name="txtEstado" class="select">
                        <option selected value="<%=tipensVO.getTip_Ens_Estado()%> "><%=tipensVO.getTip_Ens_Estado()%> </option>
                        <%
                            if (tipensVO.getTip_Ens_Estado().equals("ACTIVO")) {


                        %>

                        <option value="INACTIVO" >INACTIVO</option>
                        <%                            } else {

                        %>
                        <option value="ACTIVO">ACTIVO</option>
                        <%}%>
                    </select>
            <br> 
            <br>
            <input type="hidden" id="opcion" name="opcion" value="3">
            <button type="submit" id="boton" class="submit-btn">Actualizar</button>
            <%--<button><a href="ConsultarTipoEnsayo.jsp">volver</a></button>--%>
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
