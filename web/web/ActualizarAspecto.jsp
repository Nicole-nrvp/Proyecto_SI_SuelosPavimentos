<%-- 
    Document   : ActualizarAspecto
    Created on : 07-ago-2021, 15:28:36
    Author     : laura
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.TipoEnsayoDAO"%>
<%@page import="ModeloVO.TipoEnsayoVO"%>
<%@page import="ModeloDAO.ProcedimientoDAO"%>
<%@page import="ModeloVO.ProcedimientoVO"%>
<%@page import="ModeloVO.AspectoVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<DOCTYPE html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../assets/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <title>Actualizar Aspecto</title>
    </head>
    <body > 
    <center>

        <h1>Actualizar Aspecto</h1>

        <%

            ProcedimientoDAO proDAO = new ProcedimientoDAO();
            AspectoVO aspVO = (AspectoVO) request.getAttribute("PruebaConsultada");
            if (aspVO != null) {

        %> 
        <form method="post" action="AspectoControlador">

                <th>
                        Nombre<br>
                        <input type="text" name="Nombre" value="<%=aspVO.getASP_NOMBRE()%>"><br><br>
                        Descripcion<br>
                        <input type="text" name="Descripcion" value="<%=aspVO.getASP_DESCRIPCION()%>"><br><br>
                        Procedimiento<br>
                       
                        <select name="Procedimiento">
                        <%
                            
                     for (ProcedimientoVO elem : proDAO.Listar()) {
                         
                         %>
                        <option type="text" value="<%=elem.getPRO_ID()%>" 
                                <%=elem.getPRO_ID().equals(aspVO.getFK_procedimiento()) ? "selected" : "" %>
                                >
                            <%=elem.getPRO_NOMBRE()%>
                        </option>
                        <% } %>
                         </select>
                        
                         
                        <br><br>
                        Tipo de Ensayo
        <br>
                            
        <select name="Tipo" class="estilo-selector">
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
        
      
                                </th>   
            <br>
            <button>Actualizar</button>
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