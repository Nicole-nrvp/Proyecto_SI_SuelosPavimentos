<%-- 
    Document   : ConsultarUsuario
    Created on : 23/06/2021, 09:02:25 AM
    Author     : Camilo
--%>

<%@page import="ModeloVO.UsuarioVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="ModeloVO.RolVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/css/EstiloModulo.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="Contenido">
            <a href="Menu.jsp"><button type="submit" id="boton" class="submit-btn">Atras</button></a>
            <form method="post" action="Usuario">                             

                <div class="inputs">
                    <h2 class="Titulo">Consultar Usuario</h2>

                    <input type="text" placeholder="Nombre"  name="txtNombre">

                    <button type="submit" id="boton" class="submit-btn">Consultar</button>
                    <table border="2" class="Tabla">

                        <tr>

                            <th>Placa</th>
                            <th>Datos</th>
                            



                        </tr>
                        
                         <%
            UsuarioVO usuVO = new UsuarioVO();
            UsuarioDAO usuDAO = new UsuarioDAO(usuVO);
            ArrayList<UsuarioVO>ListaUsuario =usuDAO.listar();
            for (int i = 0; i < ListaUsuario.size(); i++) {
                    
                usuVO = ListaUsuario.get(i);
                
            
            
            %>
            <tr>
                
                <td><%=usuVO.getUsuId()%></td>
                <td><%=usuVO.getUsuRol()%></td>
                
                
                
                
            </tr>
            <%}%>
                    </table>
                    <input type="hidden" id="opcion" name="opcion" value="">
                    <%
                        if (request.getAttribute("mensajeError") != null) {  %>

                    <h2 id="Error" class="Error">${mensajeError}</h2>
                    <%} else {%>
                    <h2 id="Error" class="Exito">${mensajeExito}</h2>
                    <% }%>
            </form>    
            <script src="assets/js/Contras.js" type="text/javascript"></script>


        </div>
    </div>
</body>
</html>