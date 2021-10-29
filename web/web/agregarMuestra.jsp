<%-- 
    Document   : registrarUsuario
    Created on : 07-may-2021, 9:13:12
    Author     : usuario
--%>

<%@page import="ModeloVO.TipoMuestraVO"%>
<%@page import="ModeloDAO.TipoMuestraDAO"%>
<%@page import="ModeloVO.MuestraVO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

        <link href="Estilos/estiloRegistrarV.css" rel="stylesheet" type="text/css"/>
        <title>Registrar Muestra</title>
    </head>
    <body >
    <center> 
        <h1>REGISTRO DE MUESTRAS</h1>
        <form method="post" action="Muestra">

            <table>
                <tr>
                    <th>  

                        <br>
                        Nombre<br>
                        <input type="text" name="textMueNombre" ><br>
                        <br>
                        Observacion<br>
                        <input type="text" name="textMueObservacion" ><br>
                        <br>
                        Descripcion<br>
                        <input type="text" name="textMueDescripcion" ><br>
                        <br>
                        TipoMuestra<br>
                        <select name="textfkTipoMuestra">
                             <option>Seleccione...</option>
                                        <%                   
                                            TipoMuestraDAO tipmueDAO = new TipoMuestraDAO();
                                            for (TipoMuestraVO tipmueVO : tipmueDAO.listar()) {
                                        %>
                                        <option value="<%=tipmueVO.getTipMueId()%>"><%=tipmueVO.getTipMueNombre()%></option>
                                        <%} %>
                        </select>
                             <br>   
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
            <button>Registrar Muestra</button>
            <input type="hidden" value="3" name="opcion">

        </form>
        <br>
        <a href="Muestra.jsp"><input type="submit" value="Volver" name="Volver"></a>

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
