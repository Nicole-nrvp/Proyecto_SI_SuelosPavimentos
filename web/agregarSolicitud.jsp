<%-- 
    Document   : registrarUsuario
    Created on : 07-may-2021, 9:13:12
    Author     : usuario
--%>

<%@page import="ModeloVO.ClienteVO"%>
<%@page import="ModeloDAO.ClienteDAO"%>
<%@page import="ModeloVO.SolicitudVO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Estilos/estiloRegistrarV.css" rel="stylesheet" type="text/css"/>
        <title>Registrar Solicitud</title>
    </head>
    <body >
    <center> 
        <h1>REGISTRO DE SOLICITUDES</h1>
        <form method="post" action="Solicitud"  id="frm-usuario">

            <table>
                <tr>
                    <th>  

                        


                        Fecha Fin<br>
                        <input type="date" name="textSolFechaFin" required ><br>
                        <br>
                        <br>

                        Nombre<br>
                        <input type="text" name="textSolNombre" required ><br>
                        <br>
                        <br>

                        Cliente<br>
                        <select name="textFkCliente" required>
                            <option>Seleccione...</option>
                            <%
                                ClienteDAO cliDAO = new ClienteDAO();
                                for (ClienteVO cliVO : cliDAO.listar()) {
                            %>
                            <option value="<%=cliVO.getCliId()%>"><%=cliVO.getCliNombre()%></option>
                            <%} %>

                        </select>
                        <br> 
                        <br>

                        Estado<br>
                        <select name="textSolEstado" required>
                            <option> ACTIVO </option>
                            <option> INACTIVO </option>
                        </select><br>

                    </th>
                </tr>
            </table>
            <br>
            <button>Registrar Solicitud</button>
            <input type="hidden" value="3" name="opcion">

        </form>
        <br>
        <a href="Solicitud.jsp"><input type="submit" value="Volver" name="Volver"></a>

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
