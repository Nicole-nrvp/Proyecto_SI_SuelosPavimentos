/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.MuestraDAO;
import ModeloVO.MuestraVO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Intel
 */
@WebServlet(name = "MuestraControlador", urlPatterns = {"/Muestra"})
public class MuestraControlador extends HttpServlet {

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
        //Recoger elementos scanner (RECIBIR DATOS DE LAS VISTAS)
        int opcion = Integer.parseInt(request.getParameter("opcion"));
        String mueId = request.getParameter("textMueId");
        String mueNombre = request.getParameter("textMueNombre");
        String mueObservacion = request.getParameter("textMueObservacion");
        String mueDescripcion = request.getParameter("textMueDescripcion");
        String fkTipoMuestra = request.getParameter("textfkTipoMuestra");
        String mueEstado = request.getParameter("textMueEstado");

        //PASO 2
        //QUIEN TIENE LOS DATOS DE FORMA SEGURA? EL VO 
        //Instacncio el VO
        MuestraVO mueVO = new MuestraVO(mueId, mueNombre, mueObservacion, mueDescripcion, fkTipoMuestra, mueEstado);
        //PASO 3 
        //QUIEN HACE LAS OPERACIONES? EL DAO 
        //Instacncio el DAO y hace las operaciones que estan en el VO
        MuestraDAO mueDAO = new MuestraDAO(mueVO);

//        DatosPVO datpVO = new DatosPVO();
//        DatosPDAO datpDAO = new DatosPDAO();
        //PASO 4
        //ADMINISTRAR OPERACIONES CON CASOS (SWITCH)
        switch (opcion) {

            //METODOS GENERICOS
            case 1: //vista uno (metodo consultar registro)

                mueVO = mueDAO.consultarMuestra(mueNombre);
                if (mueVO != null) {

                    request.setAttribute("muestraConsultado", mueVO);
                    request.getRequestDispatcher("consultarMuestra.jsp").forward(request, response);

                } else {
                    request.setAttribute("mensajeError", "La Muestra NO Existe");
                    request.getRequestDispatcher("consultarMuestra.jsp").forward(request, response);

                }
//                break;

            case 2:
                //Si actualizar SE LOGRO EL LA VISTA MUESTRA CORRECTO 
                if (mueDAO.actualizarRegistro()) {
                    request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");
                    //request.setAttribute("mensajeExito", "La Muestra se actualizo correctamente");
                    //Si actualizar SE LOGRO EL LA VISTA MUESTRA ERROR 
                } else {
                     request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                    //request.setAttribute("mensajeError", "La Muestra no se actualizo correctamente");
                }
                //REDIRECCIONA A LA MISMA PAGINA PARA QUE MUESTRE LOS MENSAJES 
                //.forwar me permite mandar peticiones http (un get)
                request.getRequestDispatcher("consultarMuestra.jsp").forward(request, response);
                //acaba el caso
                break;

            case 3: //vista uno (metodo agregar registro)
                mueVO = mueDAO.consultarMuestra(mueNombre);
                if (mueVO == null) {

                    if (mueDAO.agregarRegistro()) {
                         request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");
                        //request.setAttribute("mensajeExito", "La Muestra se registro correctamente");
                        //Si el registro SE LOGRO EL LA VISTA MUESTRA ERROR 
                    } else {
                         request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                        //request.setAttribute("mensajeError", "La Muestra NO se registro correctamente");
                    }
                } else {
                     request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                    //request.setAttribute("mensajeError", "La muestra con ese nombre ya esta registrada");
                }
                request.getRequestDispatcher("consultarMuestra.jsp").forward(request, response);
                //REDIRECCIONA A LA MISMA PAGINA PARA QUE MUESTRE LOS MENSAJES 
                //.forwar me permite mandar peticiones http (un get)

                //acaba el caso
                break;
                
                case 4:
                    
                    if (mueDAO.eliminarRegistro()) {
                            request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");
                            
                        } else {
                            request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                        }
                    
                    request.getRequestDispatcher("consultarMuestra.jsp").forward(request, response);   
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
