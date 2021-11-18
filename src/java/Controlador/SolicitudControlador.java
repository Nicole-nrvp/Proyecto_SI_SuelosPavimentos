/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.SolicitudDAO;
import ModeloVO.SolicitudVO;
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
@WebServlet(name = "SolicitudControlador", urlPatterns = {"/Solicitud"})
public class SolicitudControlador extends HttpServlet {

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
        String solId = request.getParameter("textSolId");
        String solFechaInicio = request.getParameter("textSolFechaInicio");
        String solFechaFin = request.getParameter("textSolFechaFin");
        String solNombre = request.getParameter("textSolNombre");
        String clienteId = request.getParameter("textFkCliente");
        String solEstado = request.getParameter("textSolEstado");

        //PASO 2
        //QUIEN TIENE LOS DATOS DE FORMA SEGURA? EL VO 
        //Instacncio el VO
        SolicitudVO solVO = new SolicitudVO(solId, solFechaInicio, solFechaFin, solNombre, clienteId, solEstado);
        //PASO 3 
        //QUIEN HACE LAS OPERACIONES? EL DAO 
        //Instacncio el DAO y hace las operaciones que estan en el VO
        SolicitudDAO solDAO = new SolicitudDAO(solVO);

//        DatosPVO datpVO = new DatosPVO();
//        DatosPDAO datpDAO = new DatosPDAO();
        //PASO 4
        //ADMINISTRAR OPERACIONES CON CASOS (SWITCH)
        switch (opcion) {

            //METODOS GENERICOS
            case 1: //vista uno (metodo consultar registro)

                solVO = solDAO.consultarSolicitud(solNombre);
                if (solVO != null) {

                    request.setAttribute("solicitudConsultado", solVO);
                    request.getRequestDispatcher("consultarSolicitud.jsp").forward(request, response);

                } else {
                    request.setAttribute("mensajeError", "La Solicitud NO Existe");
                    request.getRequestDispatcher("consultarSolicitud.jsp").forward(request, response);

                }
                break;

            case 2:
                //Si actualizar SE LOGRO EL LA VISTA MUESTRA CORRECTO 
                if (solDAO.actualizarRegistro()) {
                    //request.setAttribute("mensajeExito", "La Solicitud se actualizo correctamente");
                    request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");

                    //Si actualizar SE LOGRO EL LA VISTA MUESTRA ERROR 
                } else {
                    request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                    //request.setAttribute("mensajeError", "La Solicitud no se actualizo correctamente");
                }
                //REDIRECCIONA A LA MISMA PAGINA PARA QUE MUESTRE LOS MENSAJES 
                //.forwar me permite mandar peticiones http (un get)
                request.getRequestDispatcher("consultarSolicitud.jsp").forward(request, response);
                //acaba el caso
                break;

            case 3: //vista uno (metodo agregar registro)
                solVO = solDAO.consultarSolicitud(solNombre);
                if (solVO == null) {

                    if (solDAO.agregarRegistro()) {
                        //request.setAttribute("mensajeExito", "La Solicitud se registro correctamente");
                        request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");

                        //Si el registro SE LOGRO EL LA VISTA MUESTRA ERROR 
                    } else {
                        request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                        //request.setAttribute("mensajeError", "La Solicitud NO se registro correctamente");
                    }
                } else {
                    request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                    //request.setAttribute("mensajeError", "La solicitud con ese nombre ya esta registrada");
                }

                request.getRequestDispatcher("consultarSolicitud.jsp").forward(request, response);
                //REDIRECCIONA A LA MISMA PAGINA PARA QUE MUESTRE LOS MENSAJES 
                //.forwar me permite mandar peticiones http (un get)

                //acaba el caso
                break;
                
            case 4:
                    
                    if (solDAO.eliminarRegistro()) {
                            request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");
                            
                        } else {
                            request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                        }
                    
                    request.getRequestDispatcher("consultarSolicitud.jsp").forward(request, response);   
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
