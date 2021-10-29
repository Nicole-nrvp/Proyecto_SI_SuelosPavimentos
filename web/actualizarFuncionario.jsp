<%-- 
    Document   : actualizarFuncionario
    Created on : 17/07/2021, 02:51:44 PM
    Author     : Camilo
--%>

<%@page import="ModeloVO.FuncionarioVO"%>
<%@page import="ModeloVO.UsuarioVO"%>
<%@page import="ModeloVO.RolVO"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="sesiones.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

        <title>Actualizar Datos</title>
    </head>


    <body>
        <div class="Contenido">
            <a href="consultarFuncionario.jsp"><button type="submit" id="boton" class="submit-btn">Atras</button></a>
            <%

                FuncionarioVO funVO = (FuncionarioVO) request.getAttribute("UsuarioConsultado");
                if (funVO != null) {

                    String Sexo;
                    if (funVO.getFunSexo().equals("1")) {
                        Sexo = "Hombre";
                    } else {
                        Sexo = "Mujer";
                    }
            %>
            <form method="post" action="Usuario" >                             

                <div class="inputs">
                    <h2 class="Titulo">Actualizar: <%=funVO.getFunNombre()%></h2>
                    <input type="hidden" name="txtFunId" value="<%=funVO.getFunId()%>">
                    <input type="text" placeholder="Nombre"  name="txtFunNombre" value="<%=funVO.getFunNombre()%>">
                    <input type="text" placeholder="Apellido"  name="txtApellido" value="<%=funVO.getFunApellido()%>">
                    <input type="text" placeholder="Celular"  name="txtCelular" value="<%=funVO.getFunCelular()%>">
                    <input type="text" placeholder="Tipo De Documento"  name="txtTipoDoc" value="<%=funVO.getFunTipoDoc()%>">
                    <input type="text" placeholder="Documento"  name="txtDoc" value="<%=funVO.getFunDoc()%>">
                    <input type="text" placeholder="Correo"  name="txtCorreo" value="<%=funVO.getFunCorreo()%>">
                    <input type="text" placeholder="Sexo"  name="txtSexo" value="<%=Sexo%>">
                    <input type="date" placeholder="Fecha de Nacimiento"  name="txtFechaNacimiento" value="<%=funVO.getFechaNacimiento()%>">
                    <input type="text" placeholder="Direccion"  name="txtDireccion" value="<%=funVO.getFunDireccion()%>">
                    <select name="txtPuesto" class="select">
                        <option value="<%=funVO.getFunId()%>" selected><%=funVO.getFunPuesto()%></option>
                        <%

                            RolDAO rolDAO = new RolDAO();
                            for (RolVO rolVO : rolDAO.listar()) {
                                if (rolVO.getRolNombre().equals(funVO.getFunPuesto())) {

                                } else {
                        %> 
                        <option value="<%=rolVO.getRolId()%>"><%=rolVO.getRolNombre()%></option>
                        <%}
                }%>
                    </select>
                    
                    <input type="hidden" id="opcion" name="opcion" value="6">
                    <button type="submit" id="boton" class="submit-btn">Actualizar</button> 
                    <%} else {


                    %>

                    <%                    
                    if (request.getAttribute("MensajeError") != null) {  %>
                    ${mensajeError}
                    <%} else {%>
                    ${mensajeExito}
                    <% }

                        }
                    %>

            </form>  
        </div>
    </div>
</body>
</html>

