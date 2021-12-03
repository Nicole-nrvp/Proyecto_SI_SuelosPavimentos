/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.Aspe_PruDAO;
import ModeloVO.Aspe_PruVO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mella
 */
@WebServlet(name = "Aspe_Pru", urlPatterns = {"/Aspe_Pru"})
public class Aspe_PruControlador extends HttpServlet {

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
        String PRU_ASP_ID = request.getParameter("Id");
        String FK_Prueba = request.getParameter("Prueba");
        String FK_Aspecto = request.getParameter("Aspecto");
        String PRU_ASP_RESULTADO = request.getParameter("Resultado");
        String PRU_ASP_ESTADO = request.getParameter("Estado");
        
        Aspe_PruVO asprVO = new Aspe_PruVO(PRU_ASP_ID, FK_Prueba, FK_Aspecto, PRU_ASP_RESULTADO, PRU_ASP_ESTADO);
        
        Aspe_PruDAO asprDAO = new Aspe_PruDAO(asprVO);

     switch (opcion){
                   
                case 1:
                    if (asprDAO.agregarRegistro()) {
                        //request.setAttribute("mensajeExito", "La Solicitud se registro correctamente");
                        request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");

                        //Si el registro SE LOGRO EL LA VISTA MUESTRA ERROR 
                    } else {
                        request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                        //request.setAttribute("mensajeError", "La Solicitud NO se registro correctamente");
                    }

                request.getRequestDispatcher("AsPru.jsp").forward(request, response);
                break;
                case 2:
                    if (asprDAO.ActualizarRegistro()) {
                        //request.setAttribute("mensajeExito", "La Solicitud se registro correctamente");
                        request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");

                        //Si el registro SE LOGRO EL LA VISTA MUESTRA ERROR 
                    } else {
                        request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                        //request.setAttribute("mensajeError", "La Solicitud NO se registro correctamente");
                    }

                request.getRequestDispatcher("AsPru.jsp").forward(request, response);
                break;
                
      case 5:
                    
                    if (asprDAO.InactivarPrueba()) {
                            request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");
                            
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
