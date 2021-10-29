/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.ClienteDAO;
import ModeloVO.ClienteVO;
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
@WebServlet(name = "ClienteControlador", urlPatterns = {"/Cliente"})
public class ClienteControlador extends HttpServlet {

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
        String cliId = request.getParameter("textCliId");
        String cliNombre = request.getParameter("textCliNombre");
        String cliApellido = request.getParameter("textCliApellido");
        String cliDocumento = request.getParameter("textCliDocumento");
        String cliTipoDoc = request.getParameter("textCliTipoDocumento");
        String cliCorreo = request.getParameter("textCliCorreo");
        String cliCelular = request.getParameter("textCliCelular");
        String cliEstado = request.getParameter("textCliEstado");

        //PASO 2
        //QUIEN TIENE LOS DATOS DE FORMA SEGURA? EL VO 
        //Instacncio el VO
        ClienteVO cliVO = new ClienteVO(cliId, cliNombre, cliApellido, cliDocumento, cliTipoDoc, cliCorreo, cliCelular, cliEstado);
        //PASO 3 
        //QUIEN HACE LAS OPERACIONES? EL DAO 
        //Instacncio el DAO y hace las operaciones que estan en el VO
        ClienteDAO cliDAO = new ClienteDAO(cliVO);

//        DatosPVO datpVO = new DatosPVO();
//        DatosPDAO datpDAO = new DatosPDAO();
        
        
        
        //PASO 4
        //ADMINISTRAR OPERACIONES CON CASOS (SWITCH)
        switch (opcion) {

            //METODOS GENERICOS
            case 1: //vista uno (metodo consultar registro)
                
                cliVO = cliDAO.consultarCliente(cliNombre);
                if (cliVO != null) {

                    request.setAttribute("clienteConsultado", cliVO);
                    request.getRequestDispatcher("actualizarCliente.jsp").forward(request, response);

                } else {
                    request.setAttribute("mensajeError", "El Cliente NO Existe");
                    request.getRequestDispatcher("consultarCliente.jsp").forward(request, response);

                }
                break;

            case 2: 
                //Si actualizar SE LOGRO EL LA VISTA MUESTRA CORRECTO 
                if (cliDAO.actualizarRegistro()) {
                    request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");
                    //request.setAttribute("mensajeExito", "El Cliente se actualizo correctamente");
                    //Si actualizar SE LOGRO EL LA VISTA MUESTRA ERROR 
                } else {
                    request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                    //request.setAttribute("mensajeError", "El Cliente no se actualizo correctamente");
                }
                //REDIRECCIONA A LA MISMA PAGINA PARA QUE MUESTRE LOS MENSAJES 
                //.forwar me permite mandar peticiones http (un get)
                request.getRequestDispatcher("consultarCliente.jsp").forward(request, response);
                //acaba el caso
                break;
                
                
            case 3:
                    
                    if (cliDAO.eliminarRegistro()) {
                            request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");
                            
                        } else {
                            request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                        }
                    
                    request.getRequestDispatcher("consultarCliente.jsp").forward(request, response);   
                    break;
// 
           

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
