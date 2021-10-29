<%-- 
    Document   : mail
    Created on : 21/08/2021, 07:42:36 PM
    Author     : Camilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="sesiones.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Java Mail</h1>
        <a href="Menu.jsp"><button type="submit" id="boton" class="submit-btn">Atras</button></a>
        <form method="post" action="Mail">
        <input type="text" placeholder="Destino" name="destinatario">
        <input type="text" placeholder="Asunto" name="asunto">
        <input type="text" placeholder="Contenido" name="contenido">
        <input type="submit" value="enviar">
        </form>
        <%
            if (request.getAttribute("resultado") != null) {  %>           
        ${resultado}
        <%} else {%>
        ${resultado}
        <% }%>
    </body>
</html>
