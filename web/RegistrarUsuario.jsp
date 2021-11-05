<%-- 
    Document   : RegistrarUsuario
    Created on : 22/06/2021, 08:09:22 PM
    Author     : Camilo
--%>


<%@page import="ModeloVO.RolVO"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="sesiones.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="https://kit.fontawesome.com/3c31f4977d.js" crossorigin="anonymous"></script>
        <link href="assets/css/validaciones.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="Contenido">
            <a href="Menu.jsp"><button type="submit" id="boton" class="submit-btn">Atras</button></a>


            <div class="inputs">


                <div class="frm-container">


                    <form method="post" action="Usuario" id="frm-usuario" >                             
                        <div class="inputs">


                            <h2 class="Titulo">Registrar Usuario</h2>

                            <div id="g-txtRolId">
                                <label for="txtRolId">Rol</label>
                                <div class="frm-g-input">
                                    <select name="txtRolId" class="frm-input">
                                        <option>Seleccione...</option>
                                        <%
                                            RolDAO rolDAO = new RolDAO();
                                            for (RolVO rolVO : rolDAO.listar()) {
                                        %> 
                                        <option value="<%=rolVO.getRolId()%>"><%=rolVO.getRolNombre()%></option>
                                        <%}%>
                                    </select>
                                    <span class="msn-error">.</span>
                                </div>
                            </div>



                            <div id="g-txtNombre">
                                <label for="txtNombre">Nombre</label>
                                <div class="frm-g-input">
                                    <input type="text" name="txtNombre" id="txtNombre" class="frm-input" />
                                    <i class="frm-icono fas fa-exclamation-circle"></i>
                                    <span class="msn-error">Solo puede ingresar letras máximo 40 caracteres</span>
                                </div>
                            </div>




                            <div id="g-txtCorreo">
                                <label for="txtCorreo">Correo</label>
                                <div class="frm-g-input">
                                    <input type="text" name="txtCorreo" id="txtCorreo" class="frm-input" />
                                    <i class="frm-icono fas fa-exclamation-circle"></i>
                                    <span class="msn-error">El correo no tiene el formato correcto Ej: usuario@dominio.com</span>
                                </div>
                            </div>


                            <button type="submit" id="boton" class="frm-input">Registrar</button>
                            
                            
                            <input type="hidden" id="opcion" name="opcion" value="2">



                            
                        </div>
                </div>




                </form>    


                <%
                        if (request.getAttribute("mensajeError") != null) {  %>           
                ${mensajeError}
                <%} else {%>
                ${mensajeExito}
                <% }%>

            </div>
        </div>
    </body>
</html>
