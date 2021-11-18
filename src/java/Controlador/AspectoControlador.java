/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.AspectoDAO;
import ModeloVO.AspectoVO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author laura
 */
@WebServlet(name = "AspectoControlador", urlPatterns = {"/AspectoControlador"})
public class AspectoControlador extends HttpServlet {

 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int opcion = Integer.parseInt(request.getParameter("opcion"));
        String ASP_ID = request.getParameter("Id");
        String ASP_NOMBRE = request.getParameter("Nombre");
        String ASP_DESCRIPCION = request.getParameter("Descripcion");
        String FK_procedimiento = request.getParameter("Procedimiento");
        String FK_Tipo_ensayo = request.getParameter("Tipo");
        String ASP_ESTADO = request.getParameter("Estado");
        
        AspectoVO aspVO = new AspectoVO(ASP_ID, ASP_NOMBRE,  ASP_DESCRIPCION, FK_procedimiento, FK_Tipo_ensayo, ASP_ESTADO);
        
        AspectoDAO aspDAO = new AspectoDAO(aspVO);
    
    
     switch (opcion){
         
        case 1:
                    if (aspDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");

                        //Si el registro SE LOGRO EL LA VISTA MUESTRA ERROR 
                    } else {
                    request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                        //request.setAttribute("mensajeError", "La Solicitud NO se registro correctamente");
                    }

                request.getRequestDispatcher("Aspecto.jsp").forward(request, response);
                        break;
        case 2: 

                if (aspDAO.actualizarRegistro()) {

                request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");

                } else {
                    
                request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                
                }
                       
                request.getRequestDispatcher("Aspecto.jsp").forward(request, response);
                       
                break;

                       
               
                case 3:

                aspVO = aspDAO.consultarAspecto(ASP_NOMBRE);
                if (aspVO != null) {

                    request.setAttribute("AspectoConsultado", aspVO);
                    request.getRequestDispatcher("ActualizarAspecto.jsp").forward(request, response);

                    } else {
                    request.setAttribute("mensajeError", "La prueba NO Existe");
                    request.getRequestDispatcher("Aspeccto.jsp").forward(request, response);
                

                    }
                    break;
       
                 case 4:
                    
                  if  (aspDAO.InactivarAspecto()){
                    response.sendRedirect("Aspecto.jsp?result=1&id="+ASP_ID);  
                } else {
                    response.sendRedirect("Aspecto.jsp?result=0&id="+ASP_ID);  
                  }
                break;
               
    
     }
 }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
