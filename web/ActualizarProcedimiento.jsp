<%-- 
    Document   : ActualizarProcedimiento
    Created on : 31-jul-2021, 22:39:44
    Author     : laura
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<DOCTYPE html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../assets/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <title>Actualizar Procedimiento</title>
    </head>
    <body > 
    <center>

        <h1>Actualizar Procedimiento</h1>

        <%

            ProcedimientoVO proVO = (ProcedimientoVO) request.getAttribute("ProcedimientoConsultado");
            if (proVO != null) {

        %> 
        <form method="post" action="ProecedimientoControlador">


        <table>
                <tr>
                    <th>
  
                        Nombre<br>
                        <input type="text" name="Nombre" readonly value="<%=proVO.getASP_NOMBRE()%>"><br><br>
                        Descripcion<br><input type="hidden" name="Id" value="<%=id%>">
                        Nombre<br>
                        <input type="text" name="Nombre" value="<%=Nombre%>"><br><br>
                        Estado
                    </TH>
                </tr>
              </TABLE>
                                
            <br>
            <button>Actualizar Aspecto</button>
            <input type="hidden" value="2" name="opcion">

        </form>
        <%}%>
        <br>
        <br>
        <a href="Aspecto.jsp"><input type="submit" value="Volver" name="Volver"></a> 
        <br>
       
    </center>


</body>
</html>
<%@page import="ModeloVO.ProcedimientoVO"%>
<DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css"/>

    <title>Prueba</title>
</HEAD>
 <body style="background-image: url('ccs/bootstrap.css'); background-size: auto; background-repeat: no-repeat">
        <%
        String id = request.getParameter("Id");
        String Nombre = request.getParameter("Nombre");
        String Estado = request.getParameter("Estado");   
            %>
     <nav class="navbar navbar-expand-lg navbar-dark bg-info">
  <a class="navbar-brand" href="#">proyecto prueba 1</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown"> </DIV>
       
        
      
       <div>
       
      <form method="post" action="ProcedimientoControlador">    
        <div class="col-lg-18"  style="opacity: 90%; background-color: white;  padding: 0px 20px 78px 29px;
    box-shadow: 0px 0px 10px #10707f; position: absolute; left: 80px; height: 600px; width: 537px;
    align-content: center; top: 103px;">
       
            <table>
                <tr>
                    <th>
                        <input type="hidden" name="Id" value="<%=id%>">
                        Nombre<br>
                        <input type="text" name="Nombre" value="<%=Nombre%>"><br><br>
                        Estado
                         <select name="Estado">
                         <option type="text" name="Estado1" value="ACTIVO">ACTIVO</option>
                                
                         <option type="text" name="Estado2" value="INACTIVO">INACTIVO</OPTION>
                         </select>
                    
                    </TH>
                </tr>
            </TABLE>
                        <button>Actualizar</button>
                        <input type="hidden" value="2" name="opciones"> 
                        <button href="Prueba.jsp" >Cancelar</button>
                        <br><br>

    
            
              </DIV>            
       </form>
                   
       </DIV>
       
            
                    

    </body>
</html>
