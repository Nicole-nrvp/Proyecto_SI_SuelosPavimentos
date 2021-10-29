<%-- 
    Document   : RegistrarPrueba
    Created on : 23/06/2021, 07:34:27 PM
    Author     : Jorgito Oooome
--%>

<%@page import="ModeloDAO.MuestraDAO"%>
<%@page import="ModeloVO.MuestraVO"%>
<%@page import="ModeloDAO.SolicitudDAO"%>
<%@page import="ModeloVO.SolicitudVO"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="ModeloVO.UsuarioVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.PruebaDAO"%>
<%@page import="ModeloVO.PruebaVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Estilos/estiloRegistrarV.css" rel="stylesheet" type="text/css"/>
        <title>Registrar Prueba</title>
    </head>
    <body>
    <center> 
                    <h1>Registrar Prueba</h1>
            <form method="post" action="PruebaControlador" id="frm-usuario">

                            Fecha de Fin
                            <br>
                            <input type="date" name="FechaFin" placeholder="Fecha Fin" required>
                            Nombre
                            <br>
                            <input type="text" name="Nombre" placeholder="Nombre"required>
                            Usuario
                            <br>
                            <input type="text" name="Usuario" placeholder="Nombre del Usuario" required>
                            Muestra
                            <br>
                            
                             <select name="Muestra" class="estilo-selector">
                                    <option selected>Muestra</option>
                                    <%
                                    MuestraVO mueVO = new MuestraVO();
                                    MuestraDAO mueDAO = new MuestraDAO(mueVO);
                                    ArrayList<MuestraVO> listaMuestras = mueDAO.listar();
                                    for (int i = 0; i < listaMuestras.size(); i++) {

                                        mueVO = listaMuestras.get(i);
                                %>
                                
                                
                                
                                <option value="<%=mueVO.getMueId() %>"><%=mueVO.getMueNombre() %></option>
                                
                                <%
                                    }
                                %>
                                    </select>
                       
                                Solicitud
                           <br>
                            <select name="Solicitud" class="estilo-selector">
                                
                                <option selected>Solicitud</option>
                                <%
                                    SolicitudVO solVO = new SolicitudVO();
                                    SolicitudDAO solDAO = new SolicitudDAO(solVO);
                                    ArrayList<SolicitudVO> listaSolicitudes = solDAO.lista();
                                    for (int i = 0; i < listaSolicitudes.size(); i++) {

                                        solVO = listaSolicitudes.get(i);
                                %>
                                <option value="<%=solVO.getSolId()%>"><%=solVO.getSolNombre()%></option>
                                <%
                                    }
                                %>    
                            </select>
                            
                        <input type="hidden" name="Estado" value="ACTIVO">

                    <BUTTON> Registrar Prueba</BUTTON>
                    <input type="hidden"  value="1" name="opcion">
 
            </form>
            <br>
        <a href="Prueba.jsp"><input type="submit" value="Volver" name="Volver"></a>

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