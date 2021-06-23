/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.FuncionarioDAO;
import ModeloDAO.UsuarioDAO;
import ModeloVO.FuncionarioVO;
import ModeloVO.RolVO;
import ModeloVO.UsuarioVO;
import java.io.IOException;

import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Camilo
 */
@WebServlet(name = "Usuario", urlPatterns = {"/Usuario"})
public class UsuarioControlador extends HttpServlet {

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
        String UsuId = request.getParameter("textId");
        String UsuCorreo = request.getParameter("txtCorreo");
        String UsuPassword = request.getParameter("txtClave");
        String UsuNombre = request.getParameter("txtNombre");
        /*String FunApellido = request.getParameter("txtApellido");
        String FunCelular = request.getParameter("txtCelular");
        String FunTipoDoc = request.getParameter("txtTipoDoc");
        String FunDoc = request.getParameter("txtDoc");
        String FunSexo = request.getParameter("txtSexo");
        String FunFechaNacimiento = request.getParameter("txtFechaNacimiento");
        String FunDireccion = request.getParameter("txtDireccion");
        String FunPuesto = request.getParameter("txtPuesto");*/
        String RolId = request.getParameter("txtRolId");
        
        UsuarioVO usuVo = new UsuarioVO(UsuId, UsuNombre, UsuPassword, RolId, UsuCorreo);
        //FuncionarioVO funVO = new FuncionarioVO(UsuId,UsuNombre, FunApellido, FunTipoDoc, FunDoc, FunCelular, FunSexo, FunFechaNacimiento, FunDireccion, UsuCorreo,FunPuesto);
        UsuarioDAO usuDAO = new UsuarioDAO(usuVo);
        FuncionarioVO funVO = new FuncionarioVO();
        FuncionarioDAO funDAO = new FuncionarioDAO(funVO);
        
        switch(opcion){
            case 1:

                if (usuDAO.iniciarSesion(UsuCorreo, UsuPassword)){
                    String IdUsuario = "";
                    HttpSession miSesion = request.getSession(true);
                    usuVo = new UsuarioVO(UsuId, UsuNombre, UsuPassword, UsuId, UsuCorreo);
                    miSesion.setAttribute("datosUsuario", usuVo);
                    
                    
                    ArrayList<UsuarioVO> listaRoles = usuDAO.rol(UsuCorreo);
                    
                    for (int i = 0; i < listaRoles.size(); i++) {

                        usuVo = listaRoles.get(i);
                        IdUsuario = usuVo.getUsuId();
                        

                    }
                    //miSesion.setAttribute("rol", usuVo);
                   miSesion.setAttribute("rol", listaRoles); 
                   
                    if (usuVo.getUsuRol().equals("GERENTE")) {

                        request.getRequestDispatcher("Menu.jsp").forward(request, response);

                    }else{
                        request.getRequestDispatcher("Secretaria.jsp").forward(request, response);
                    }
                    funVO = funDAO.ConsultarRegistros(IdUsuario);
                    if(funVO != null){
                        miSesion.setAttribute("DatosCargados",funVO);
                        request.setAttribute("usuarioId", IdUsuario);
                    }else{
                        request.setAttribute("MensajeError", "El usuario no se encontro");
                    }
                          
                     
                    
                    
                    
                    
                    
                    
                }else{
                request.setAttribute("MensajeError", "El usuario no se encuentra");
                request.getRequestDispatcher("IniciarSesion.jsp").forward(request, response);
                }
                
                break;
            case 2:
                
                if (usuDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "El Usuario se registro correctamente");
                    request.getRequestDispatcher("RegistrarUsuario.jsp").forward(request, response);
                                

                }else{
                    
                    request.setAttribute("mensajeError", "El Usuario se registro incorrectamente");
                    request.getRequestDispatcher("RegistrarUsuario.jsp").forward(request, response);
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
