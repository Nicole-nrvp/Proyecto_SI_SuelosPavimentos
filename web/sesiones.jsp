<%-- 
    Document   : sesiones
    Created on : 19/06/2021, 09:14:47 PM
    Author     : Camilo
--%>

<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="ModeloVO.FuncionarioVO"%>
<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    response.setHeader("Pragma", "No-cache");
    response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
    response.setDateHeader("Expires", 0);

%>

<%    
    
    HttpSession buscarSesion = (HttpSession) request.getSession();
    UsuarioVO usuVO2 = (UsuarioVO) buscarSesion.getAttribute("UsuarioConsultado");
    String Nombre = "";
    String Id = "";
    String UsuId ="";
    if (buscarSesion.getAttribute("datosUsuario") == null) {

        request.getRequestDispatcher("Login.jsp").forward(request, response);
    } else {

        UsuarioVO usuVO = (UsuarioVO) buscarSesion.getAttribute("datosUsuario");
        FuncionarioVO funVO = new FuncionarioVO();
        funVO = (FuncionarioVO) buscarSesion.getAttribute("DatosCargados");
        UsuId = usuVO2.getUsuId();
        if (funVO == null) {
            
        } else {
            Nombre = funVO.getFunNombre();
            Id = funVO.getFunId();
            
        }

    }  
    


%>

