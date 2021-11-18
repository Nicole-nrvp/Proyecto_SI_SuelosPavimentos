<%-- 
    Document   : RegistrarTipoEnsayo
    Created on : 22/06/2021, 11:27:52 PM
    Author     : as
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Registrar T.E</title>
    </head>
    <body>
        <style>
.formulario h1 {
    margin-top: -12px;
    margin-left: 20px;
    top: 24%;
    color: #000;
    
}

.formulario {
    align-items: center;
    width: 500px;
    height: 500px; 
    background: #FFF ;
    color: #000;
    top: 50%;
    left: 50%;
    position: absolute;
    transform: translate(-50%, -50%);
    box-sizing:border-box;
    padding: 10px 30px;
    border: 1px solid black;
}

.formulario input{
    width: 100%;
    margin-bottom: 40px;
    padding: 5px;
}

.formulario input{
    background-color: transparent;
    border: none;
    border-bottom: 1px solid #000;
    color: #000;
    padding: 10px 1px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}

.formulario th{
    margin: 0;
    padding: 0;
    font-weight: bold;
    display: block;
}

.formulario button{
    text-align: center;
    width: 100px;
    height: 40px;
    background-color: gray;
    color: #000;
    font-size: 16px;
    border: 30px;
    cursor: pointer;
}

        </style>
        
        <form class="formulario" id="" method="POST" action="TipoEnsayo" >
            <h1>Registrar Tipo de Ensayo</h1>
    <label for="txtId" class="d-none">ID:</label>
    <input type="text" placeholder="id tipo de ensayo" name="txtid">
            
            <label for="txtNombre">Nombre</label>
            <input type="text" placeholder="Nombre tipo de ensayo" name="txtNombre">
            <br>
            <br>
            <label for="txtClaseEnsayo">Clase de Ensayo</label>
            <select name="txtClaseEnsayo" class="select">
                        
                        <option value="1" >ESPECIAL</option>
                      
                        <option value="2">GENERAL</option>
                        
                    </select>
            
            <label for="txtEstado">Estado</label>
           <select name="txtEstado" class="select">
                        
                        <option value="INACTIVO" >INACTIVO</option>
                      
                        <option value="ACTIVO">ACTIVO</option>
                        
                    </select>
            <br>
            <br>
            <button class="" type="submit">Registrar</button>
            <input type="hidden" value="1" name="opcion">
        </form>
    </body>
</html>
