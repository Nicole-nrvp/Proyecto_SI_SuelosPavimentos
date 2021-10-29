

<%@page import="ModeloVO.ClienteVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

        <title>Actualizar Cliente</title>
    </head>
    <body > <center>

        <h1>Actualizar Cliente</h1>

        <%

            ClienteVO cliVO = (ClienteVO) request.getAttribute("clienteConsultado");
            if (cliVO != null) {

        %> 
        <form method="post" action="Cliente">


            Code <br>
            <input type="number" name="textCliId" value="<%=cliVO.getCliId()%>" readonly>
            <br>
            <br>
            Nombre <br>
            <input type="text" name="textCliNombre" value="<%=cliVO.getCliNombre()%>"><br>
            <br>
            Apellido <br>
            <input type="text" name="textCliApellido" value="<%=cliVO.getCliApellido()%>"><br>
            <br>
            Documento<br>
            <input type="text" name="textCliDocumento" value="<%=cliVO.getCliDocumento()%>"><br>
            <br>
            Tipo Documento<br>
            <select name="textCliTipoDocumento">
                <option> CC </option>
                <option> TI </option>
                <option> CE </option>

            </select><br>
            <br>
            Correo<br>
            <input type="email" name="textCliCorreo" value="<%=cliVO.getCliCorreo()%>"><br>
            <br>
            Celular<br>
            <input type="number" name="textCliCelular" value="<%=cliVO.getCliCelular()%>"><br>
            <br>
            Estado<br>
            <button></button>
            <select name="textCliEstado" class="select">
                        <option selected><%=cliVO.getCliEstado()%></option>
                        <%
                            if (cliVO.getCliEstado().equals("ACTIVO")) {


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
        <a href="consultarCliente.jsp"><input type="submit" value="Volver" name="Volver"></a> 
        <br>
        <br>
<div >
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

