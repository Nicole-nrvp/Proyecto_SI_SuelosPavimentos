/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.ClaseEnsayoDAO;
import ModeloVO.ClaseEnsayoVO;
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
@WebServlet(name = "ClaseEnsayo", urlPatterns = {"/ClaseEnsayo"})
public class ClaseEnsayoControlador extends HttpServlet {

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
        String Cla_Ens_ID = request.getParameter("textId");
        String Cla_Ens_Nombre = request.getParameter("txtNombre");
        String Cla_Ens_Estado = request.getParameter("txtEstado");
        //2. Quien tiene los datos de forma segura?
        //El VO :D
        ClaseEnsayoVO clasensVO = new ClaseEnsayoVO(Cla_Ens_ID, Cla_Ens_Nombre, Cla_Ens_Estado);
        //3. Quien hace las operaciones?
        //El DAO :D
        ClaseEnsayoDAO clasensDAO = new ClaseEnsayoDAO(clasensVO);
        
        switch(opcion){
            case 1:
                
                if (clasensDAO.agregarRegistro()) 
                {
                    request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");

                } 
                else 
                {
                    request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                    System.out.println("No se pudo registrar correctamente ");

                }
                request.getRequestDispatcher("ConsultarClaseEnsayo.jsp").forward(request, response);
                
                break;
            
            case 2:

                clasensVO = clasensDAO.consultarClaseEnsayo(Cla_Ens_Nombre);
                if (clasensVO != null) {
                    
                    request.setAttribute("ClaseEnsayoConsultado", clasensVO);
                    request.getRequestDispatcher("ActualizarClaseEnsayo.jsp").forward(request, response);
                    
                } else {
                    
                    request.setAttribute("La clase de Ensayo no existe", clasensVO);
                    request.getRequestDispatcher("ConsultarClaseEnsayo.jsp").forward(request, response);
                    
                } 
                break;
            
            case 3:
                    
                    if (clasensDAO.actualizarRegistro()) {
                            request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");
                            
                        } else {
                            request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                        }
                    
                    request.getRequestDispatcher("ConsultarClaseEnsayo.jsp").forward(request, response);   
                    break;
                    
            case 5:
                    
                clasensVO = clasensDAO.consultarClaseEnsayo(Cla_Ens_ID);
                if (clasensVO != null) {

                    request.setAttribute("ClaseEnsayoConsultado", clasensVO);
                    request.getRequestDispatcher("ActualizarClaseEnsayo.jsp").forward(request, response);

                } else {

                    request.setAttribute("mensajeError", "<scrip-t src=\"assets/js/Error.js\"></script>");
                    request.getRequestDispatcher("ActualizarClaseEnsayo.jsp").forward(request, response);

                }
                    break;
            case 7:
                    
                    if (clasensDAO.eliminarRegistro()) {
                            request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");
                            
                        } else {
                            request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                        }
                    
                    request.getRequestDispatcher("ConsultarClaseEnsayo.jsp").forward(request, response);   
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
