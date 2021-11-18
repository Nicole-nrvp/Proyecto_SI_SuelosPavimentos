/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.TipoEnsayoDAO;
import ModeloVO.TipoEnsayoVO;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author as
 */
@WebServlet(name = "TipoEnsayo", urlPatterns = {"/TipoEnsayo"})
public class TipoEnsayoControlador extends HttpServlet {

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
        //1. Resibir datos de la vista
        int opcion = Integer.parseInt(request.getParameter("opcion"));
        String Tip_Ens_ID = request.getParameter("textId");
        String Tip_Ens_Nombre = request.getParameter("txtNombre");
        String FK_clase_Ensayo = request.getParameter("txtClaseEnsayo");
        String Tip_Ens_Estado = request.getParameter("txtEstado");
        
        //2. Quien tiene los datos de forma segura?
        //El VO :D
        TipoEnsayoVO tipensVO = new TipoEnsayoVO(Tip_Ens_ID, Tip_Ens_Nombre, FK_clase_Ensayo, Tip_Ens_Estado);
        //3. Quien hace las operaciones?
        //El DAO :D
        TipoEnsayoDAO tipensDAO = new TipoEnsayoDAO(tipensVO);
        
        switch(opcion){
            case 1:
                 
                if (tipensDAO.agregarRegistro()) 
                {
                    request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");
                            
                        } else {
                            request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                        }
                
                request.getRequestDispatcher("ConsultarTipoEnsayo.jsp").forward(request, response);
                
                break;
            
            case 2:

                tipensVO = tipensDAO.consultarTipoEnsayo(Tip_Ens_Nombre);
                if (tipensVO != null) {
                    
                    request.setAttribute("TipoEnsayoConsultado", tipensVO);
                    request.getRequestDispatcher("ActualizarTipoEnsayo.jsp").forward(request, response);
                    
                } else {
                    
                    request.setAttribute("El tipo de Ensayo no existe", tipensVO);
                    request.getRequestDispatcher("ConsultarTipoEnsayo.jsp").forward(request, response);
                    
                } 
                break;
                
                case 3:
                    
                    if (tipensDAO.actualizarRegistro()) {
                            request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");
                            
                        } else {
                            request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                        }
                    
                    request.getRequestDispatcher("ConsultarTipoEnsayo.jsp").forward(request, response);   
                    break;
                    
            case 7:
                    
                    if (tipensDAO.eliminarRegistro()) {
                            request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");
                            
                        } else {
                            request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                        }
                    
                    request.getRequestDispatcher("ConsultarTipoEnsayo.jsp").forward(request, response);   
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
        return "Short description";}
    } // </editor-fold>



    