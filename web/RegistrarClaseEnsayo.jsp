<%-- 
    Document   : RegistrarClaseEnsayo
    Created on : 23/06/2021, 09:20:26 AM
    Author     : as
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/css/Style.css" rel="stylesheet" type="text/css"/>
        <title>Registrar C.E</title>
    </head>
    <body>
        <h1>Registrar Clase de Ensayo</h1>
         <form class="formulario" method="POST" action="ClaseEnsayo">
            
            
            <input type="text" placeholder="id clase de ensayo" name="textId">
            <br>
            <br>
            <input type="text" placeholder="nombre clase de ensayo" name="txtNombre">
            <br>
            <br>
            <select name="txtEstado" class="select">
                        
                        <option value="INACTIVO" >INACTIVO</option>
                      
                        <option value="ACTIVO">ACTIVO</option>
                        
                    </select>
            <br>
            <button type="submit">Registrar</button>
            <input type="hidden" value="1" name="opcion">
        </form>
    </body>
</html>
