<%-- 
    Document   : actualizarPrueba
    Created on : 07-jul-2021, 19:07:45
    Author     : laura
--%>



<%@page import="ModeloDAO.PruebaDAO"%>
<%@page import="ModeloVO.PruebaVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.MuestraDAO"%>
<%@page import="ModeloVO.MuestraVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<DOCTYPE html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../assets/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <title>Actualizar Prueba</title>
    </head>
    <body > 
    <center>

        <h1>Actualizar Prueba</h1>

        <%

            PruebaVO pruVO = (PruebaVO) request.getAttribute("PruebaConsultada");
            if (pruVO != null) {

        %> 
        <form method="post" action="PruebaControlador">


            <th>
                                    Numero de Prueba<br>
                                    <input type="number" name="Id" readonly value="<%=pruVO.getPru_id()%>"><br><BR>
                                    Fecha Fin<br>
                                    <input type="date" name="FechaFin" value="<%=pruVO.getPru_fecha_fin()%>"><br><br>
                                    Nombre<br>
                                    <input type="text" name="Nombre"  readonly value="<%=pruVO.getPru_nombre()%>"><br><br>
                                    Muestra<br>
                                    <select name="Muestra" class="estilo-selector">
                                    <%
                                    MuestraVO mueVO = new MuestraVO();
                                    MuestraDAO mueDAO = new MuestraDAO(mueVO);
                                    ArrayList<MuestraVO> listaMuestras = mueDAO.listar();
                                    for (int i = 0; i < listaMuestras.size(); i++) {

                                        mueVO = listaMuestras.get(i);
                                %>
                                
                                
                                
                                <option value="<%=mueVO.getMueId() %>" <%=pruVO.getFK_Muestra().equals(mueVO.getMueId()) ? "selected" : "" %> ><%=mueVO.getMueNombre() %></option>
                                
                                <%
                                    }
                                %>
                                    </select>
                                </th>   
        </form>
        <%}%>
        <br>
        <br>
        <a href="Prueba.jsp"><input type="submit" value="Volver" name="Volver"></a> 
        <br>
       
    </center>


</body>
</html>