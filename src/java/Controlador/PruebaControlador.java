/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.PruebaDAO;
import ModeloVO.PruebaVO;
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
@WebServlet(name = "PruebaControlador", urlPatterns = {"/PruebaControlador"})
public class PruebaControlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int opcion = Integer.parseInt(request.getParameter("opcion"));
        String pru_id = request.getParameter("Id");
        String pru_nombre = request.getParameter("Nombre");
        String pru_fecha_inicio = request.getParameter("FechaInicio");
        String pru_fecha_fin = request.getParameter("FechaFin");
        String FK_Usuario = request.getParameter("Usuario");
        String FK_Muestra = request.getParameter("Muestra");
        String FK_Solicitud = request.getParameter("Solicitud");
        String PRU_ESTADO = request.getParameter("Estado");
        
        PruebaVO pruVO = new PruebaVO(pru_id, pru_nombre, pru_fecha_inicio, pru_fecha_fin,  FK_Usuario, FK_Muestra,FK_Solicitud, PRU_ESTADO);
        
        PruebaDAO pruDAO = new PruebaDAO(pruVO);
        
        
        switch (opcion){
                   
                case 1:
                    if (pruDAO.agregarRegistro()) {
                        //request.setAttribute("mensajeExito", "La Solicitud se registro correctamente");
                        request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");

                        //Si el registro SE LOGRO EL LA VISTA MUESTRA ERROR 
                    } else {
                        request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                        //request.setAttribute("mensajeError", "La Solicitud NO se registro correctamente");
                    }

                request.getRequestDispatcher("Prueba.jsp").forward(request, response);
                break;
                        
                case 2: // Actualizar Registro

                        if (pruDAO.actualizarRegistro()) {

                         request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");

                            //Si actualizar SE LOGRO EL LA VISTA MUESTRA ERROR 
                        } else {
                            request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                            //request.setAttribute("mensajeError", "La Solicitud no se actualizo correctamente");
                        }
                        //REDIRECCIONA A LA MISMA PAGINA PARA QUE MUESTRE LOS MENSAJES 
                        //.forwar me permite mandar peticiones http (un get)
                        request.getRequestDispatcher("Prueba.jsp").forward(request, response);
                        //acaba el caso
                        break;
                       
                
               /* case 3:

                    pruVO = pruDAO.consultarPrueba(pru_id);
                    if (pruVO != null) {

                    request.setAttribute("PruebaConsultada", pruVO);
                    request.getRequestDispatcher("Prueba.jsp").forward(request, response);

                    } else {
                    request.setAttribute("mensajeError", "La prueba NO Existe");
                    request.getRequestDispatcher("Prueba.jsp").forward(request, response);
                

                    }
                    break;*/
                case 3:
                    
                    if (pruDAO.actualizarRegistro()) {
                            request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");
                            
                        } else {
                            request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                        }
                    
                    request.getRequestDispatcher("ConsultarTipoEnsayo.jsp").forward(request, response);   
                    break;
                    
                case 4:
                    
                  if  (pruDAO.InactivarPrueba()){
                   response.sendRedirect("Prueba.jsp?result=1&id="+pru_id);
             
                } else {
                    response.sendRedirect("Prueba.jsp?result=0&id="+pru_id);  
                  }
                break;
                
                
               
                
                case 5:
                    
                    if (pruDAO.InactivarPrueba()) {
                            request.setAttribute("mensajeExito", "<script src=\"assets/js/ModalAP.js\"></script>");
                            
                        } else {
                            request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                        }
                    
                    request.getRequestDispatcher("AsPru.jsp").forward(request, response);   
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
