<%-- 
    Document   : registrarse.jsp
    Created on : 14/08/2021, 10:09:23 PM
    Author     : Camilo
--%>

<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="sesiones.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="https://kit.fontawesome.com/3c31f4977d.js" crossorigin="anonymous"></script>
        <link href="assets/css/validaciones.css" rel="stylesheet" type="text/css"/>
        <title>Actualizar Funcionario</title>
    </head>


    <body>
        <%            if (usuVO2 != null) {
        %>
        <div class="frm-container">


            <form method="post" action="Usuario" id="frm-usuario" >                             
                <div class="inputs">


                    <h2 class="Titulo">Registrar Usuario</h2>

                    <div id="g-txtTipoDoc">
                        <label for="txtTipoDoc">Tipo Documento</label>
                        <div class="frm-g-input">
                            <select name="txtTipoDoc" id="txtTipoDoc" class="frm-input">
                                <option>Seleccione un Tipo de Documento</option>
                                <option value="CC">Cédula de Ciudadanía</option>
                                <option value="TI">Tarjeta de Identidad</option>
                            </select>
                            <span class="msn-error">.</span>
                        </div>
                    </div>

                    <div id="g-txtDoc">
                        <label for="txtDoc">Número de Documento</label>
                        <div class="frm-g-input">
                            <input type="text" name="txtDoc" id="txtDoc" class="frm-input" />
                            <i class="frm-icono fas fa-exclamation-circle"></i>
                            <span class="msn-error">Solo puede ingresar números mínimo 5 caracteres y máximo 15</span>
                        </div>
                    </div>

                    <div id="g-txtFunNombre">
                        <label for="txtFunNombre">Nombre</label>
                        <div class="frm-g-input">
                            <input type="text" name="txtFunNombre" id="txtFunNombre" class="frm-input" />
                            <i class="frm-icono fas fa-exclamation-circle"></i>
                            <span class="msn-error">Solo puede ingresar letras máximo 40 caracteres</span>
                        </div>
                    </div>

                    <div id="g-txtApellido">
                        <label for="txtApellido">Apellido</label>
                        <div class="frm-g-input">
                            <input type="text" name="txtApellido" id="txtApellido" class="frm-input" />
                            <i class="frm-icono fas fa-exclamation-circle"></i>
                            <span class="msn-error">Solo puede ingresar letras máximo 40 caracteres</span>
                        </div>
                    </div>



                    <div id="g-txtCorreo">
                        <label for="txtCorreo">Correo</label>
                        <div class="frm-g-input">
                            <input type="text" name="txtCorreo" id="txtCorreo" class="frm-input" value="<%=usuVO2.getUsuCorreo()%>" readonly/>
                            <i class="frm-icono fas fa-exclamation-circle"></i>
                            <span class="msn-error">El correo no tiene el formato correcto Ej: usuario@dominio.com</span>
                        </div>
                    </div>

                    <div id="g-txtCelular">
                        <label for="txtCelular">Celular</label>
                        <div class="frm-g-input">
                            <input type="text" name="txtCelular" id="txtCelular" class="frm-input" />
                            <i class="frm-icono fas fa-exclamation-circle"></i>
                            <span class="msn-error">Solo puede ingresar números mínimo 5 caracteres y máximo 15</span>
                        </div>
                    </div>

                    <div id="g-txtDireccion">
                        <label for="txtDireccion">Direccion</label>
                        <div class="frm-g-input">
                            <input type="text" name="txtDireccion" id="txtDireccion" class="frm-input" />                           
                        </div>
                    </div>

                    <div id="g-txtSexo">

                        <div class="frm-g-input">

                            <select name="txtSexo" id="txtSexo" class="frm-input">
                                <option>Seleccione su sexo</option>
                                <option value="1">Hombre</option>
                                <option value="2">Mujer</option>
                            </select>
                            <span class="msn-error">.</span>
                        </div>
                    </div>
                    <div id="g-txtClave">
                        <label for="txtClave">Password</label>
                        <div class="frm-g-input">
                            <input type="password" name="txtClave" id="txtClave" class="frm-input" />
                            <i class="frm-icono fas fa-exclamation-circle"></i>
                            <span class="msn-error">Debe tener 8 caracteres,1 símbolo,1 min-mayúscula, y numeros</span>
                        </div>
                    </div>

                    <div id="g-txtClave2">
                        <label for="txtClave2">Confirmar password</label>
                        <div class="frm-g-input">
                            <input type="password" name="txtClave2" id="txtClave2" class="frm-input" />
                            <i class="frm-icono fas fa-exclamation-circle"></i>
                            <span class="msn-error">Contraseñas ingresadas no coinciden</span>
                        </div>
                    </div>

                    <div id="g-txtFechaNacimiento">
                        <label for="txtFechaNacimiento">Fecha de Nacimiento</label>
                        <div class="frm-g-input">
                            <input type="date" placeholder="Fecha de Nacimiento" name="txtFechaNacimiento" id="txtFechaNacimiento"> 

                        </div>
                    </div>


                            <input type="hidden" name="txtFunId" value="<%=usuVO2.getUsuId()%>">
                    <input type="hidden" name="txtPuesto" value="<%=usuVO2.getUsuPassword()%>"> 
                    <input type="hidden" name="txtEstado" value="ACTIVO">
                    <input type="hidden" id="opcion" name="opcion" value="8">
                    <button type="submit" id="boton" class="submit-btn">Registrarse</button> 
                                
                    <%}%>
                    <%
                        if (request.getAttribute("MensajeError") != null) {  %>
                    ${mensajeError}
                    <%} else {%>
                    ${mensajeExito}
                    <%}%>
                          
                    </form>  
                    <div class="frm-error" id="frm-error">
                        <b>Error</b> Hay Campos Incompletos o Incorrectos
                    </div>
                    <script src="assets/js/validaciones.js" type="text/javascript"></script>
                </div>
        </div>
    </body>
</html>

