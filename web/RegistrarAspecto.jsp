<%-- 
    Document   : RegistrarAspecto
    Created on : 07-ago-2021, 17:59:51
    Author     : laura
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.TipoEnsayoDAO"%>
<%@page import="ModeloVO.TipoEnsayoVO"%>
<%@page import="ModeloVO.ProcedimientoVO"%>
<%@page import="ModeloDAO.ProcedimientoDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Estilos/estiloRegistrarV.css" rel="stylesheet" type="text/css"/>
        <title>Registrar Aspecto</title>
    </head>
    <body>
    <center> 
            <h1>Registrar Aspect</h1>
            <form method="post" action="AspectoControlador" id="frm-usuario">

        Nombre
        <br>
        <input type="text" name="Nombre" placeholder="Nombre" required>
                           Descripcion
        <br>
        <textarea type="text" name="Descripcion" placeholder="Descripcion" required></textarea>
  
        
        Procedimiento
        <br>
                            
        <select name="Procedimiento" class="estilo-selector" >
        <option selected>Procedimiento</option>
        <%
           
        ProcedimientoDAO proDAO = new ProcedimientoDAO();
           
           
            for (ProcedimientoVO elem : proDAO.Listar()) {
                   
                      
             %>
                                
                                
                                
                                <option value="<%=elem.getPRO_ID()%>"><%=elem.getPRO_NOMBRE()%></option>
                                
                                
                                <%
                                    }
                                %>
                                    </select>
                       
         
        Tipo de Ensayo
        <br>
                            
        <select name="Tipo" class="estilo-selector">
        <option selected>Tipo De Ensayo</option>
        <%
        TipoEnsayoVO tipensVO = new TipoEnsayoVO(); 
        TipoEnsayoDAO tipensDAO = new TipoEnsayoDAO();
        ArrayList<TipoEnsayoVO> listaTipoEnsayo = tipensDAO.listar();
                    for (int i = 0; i < listaTipoEnsayo.size(); i++) {
                        tipensVO = listaTipoEnsayo.get(i); 

                                        tipensVO = listaTipoEnsayo.get(i);
                        
                              %>
                               <option value="<%=tipensVO.getTip_Ens_ID()%>"><%=tipensVO.getTip_Ens_Nombre() %></option>
                                <%
                                    }
                                  %>
                                    </select>
        
      
                            
                        <input type="hidden" name="Estado" value="ACTIVO">

                    <BUTTON> Registrar Aspecto</BUTTON>
                    <input type="hidden"  value="1" name="opcion">
 
            </form>
            <br>
        <a href="Aspecto.jsp"><input type="submit" value="Volver" name="Volver"></a>

    </center>                     
    </body>
</html>