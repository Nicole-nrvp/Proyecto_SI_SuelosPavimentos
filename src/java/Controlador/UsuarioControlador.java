/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.FuncionarioDAO;
import ModeloDAO.RolDAO;
import ModeloDAO.UsuarioDAO;
import ModeloVO.FuncionarioVO;
import ModeloVO.RolVO;
import ModeloVO.UsuarioVO;
import Util.PasswordGenerator;
import Util.forget;
import java.io.IOException;

import java.util.ArrayList;
import javax.servlet.ServletContext;
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

    private String host, puerto, usuario, clave;

    public void init() {
        ServletContext contex = getServletContext();
        host = contex.getInitParameter("host");
        puerto = contex.getInitParameter("puerto");
        usuario = contex.getInitParameter("usuario");
        clave = contex.getInitParameter("clave");

    }

    /**
     *
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
        response.setContentType(
                "text/html;charset=UTF-8");

        int opcion = Integer.parseInt(request.getParameter("opcion"));
        String UsuId = request.getParameter("textId");
        String UsuCorreo = request.getParameter("txtCorreo");
        String UsuPassword = request.getParameter("txtClave");
        if (UsuPassword == null) {
            UsuPassword = PasswordGenerator.getPassword(
                    PasswordGenerator.MINUSCULAS
                    + PasswordGenerator.MAYUSCULAS
                    + PasswordGenerator.NUMEROS, 20);
        }
        String UsuNombre = request.getParameter("txtNombre");
        String RolId = request.getParameter("txtRolId");
        String RolNombre = request.getParameter("txtRolNombre");
        String UsuEstado = request.getParameter("txtEstado");
        //FUNCIONARIO
        String FunId = request.getParameter("txtFunId");
        String FunNombre = request.getParameter("txtFunNombre");
        String FunApellido = request.getParameter("txtApellido");
        String FunCelular = request.getParameter("txtCelular");
        String FunTipoDoc = request.getParameter("txtTipoDoc");
        String FunDoc = request.getParameter("txtDoc");
        String FunSexo = request.getParameter("txtSexo");
        String FunFechaNacimiento = request.getParameter("txtFechaNacimiento");
        String FunDireccion = request.getParameter("txtDireccion");
        String FunPuesto = request.getParameter("txtPuesto");
        
        
        UsuarioVO usuVo = new UsuarioVO(UsuId, UsuNombre, UsuPassword, RolId, UsuCorreo, UsuEstado);
        FuncionarioVO funVO = new FuncionarioVO(FunId, FunNombre, FunApellido, FunTipoDoc, FunDoc, FunCelular, FunSexo, FunFechaNacimiento, FunDireccion, UsuCorreo, FunPuesto, UsuEstado);
        UsuarioDAO usuDAO = new UsuarioDAO(usuVo);

        FuncionarioDAO funDAO = new FuncionarioDAO(funVO);
        
        RolVO rolVO = new RolVO(RolId, RolNombre);
        RolDAO rolDAO = new RolDAO(rolVO);
        
        switch (opcion) {
            case 1:

                if (usuDAO.iniciarSesion(UsuCorreo, UsuPassword)) {
                    String IdUsuario = "";
                    String rol = "";
                    HttpSession miSesion = request.getSession(true);
                    usuVo = new UsuarioVO(usuVo.getUsuId(), usuVo.getUsuRol());
                    miSesion.setAttribute("datosUsuario", usuVo);
                    usuVo = usuDAO.rol(UsuCorreo);                    
                    IdUsuario = usuVo.getUsuId();
                    rol = usuVo.getUsuRol();
                    miSesion.setAttribute("rol", rol);
                    usuVo = usuDAO.ConsultarUsuario2(IdUsuario);
                    if (usuVo != null) {

                        miSesion.setAttribute("UsuarioConsultado", usuVo);

                    } else {
                        request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                    }
                    funVO = funDAO.rectificar(IdUsuario);
                    if (funVO != null) {
                        //miSesion.setAttribute("DatosCargados", funVO);
                        miSesion.setAttribute("usuarioId", IdUsuario);
                    } else {
                        request.getRequestDispatcher("registrarse.jsp").forward(request, response);
                        request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");

                    }
                    if (usuVo.getUsuVerificacion().equals("0")) {
                        request.getRequestDispatcher("cambiarClave.jsp").forward(request, response);
                    } else {

                    }
                    request.getRequestDispatcher("index.jsp").forward(request, response);

                } else {
                    request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                    request.getRequestDispatcher("Login.jsp").forward(request, response);
                }

                break;
            case 2:
                usuVo = usuDAO.ConsultarUsuario(UsuNombre);
                if (usuVo != null) {
                    request.setAttribute("mensajeError", "<script src=\"assets/js/Alerta.js\"></script>");
                    request.getRequestDispatcher("consultarUsuario.jsp").forward(request, response);
                } else {

                    if (usuDAO.agregarRegistro()) {
                        try {
                            String destinatario = UsuCorreo;
                            String asunto = "Usted fue registrado en el Sistema se Suelos y Pavimentos";
                            String contenido = "Su Correo es " + UsuCorreo + " Y su Contraseña es " + UsuPassword;
                            forget.enviarConGMail(destinatario, asunto, contenido, usuario, clave);
                        } catch (Exception e) {
                            e.printStackTrace();

                        } finally {

                        }
                        request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");
                        request.getRequestDispatcher("consultarUsuario.jsp").forward(request, response);

                    } else {

                        request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                        request.getRequestDispatcher("consultarUsuario.jsp").forward(request, response);
                    }

                }

                break;
            case 3:

                usuVo = usuDAO.ConsultarUsuario(UsuNombre);
                if (usuVo != null) {

                    request.setAttribute("UsuarioConsultado", usuVo);
                    request.getRequestDispatcher("actualizarUsuario.jsp").forward(request, response);

                } else {

                    request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                    request.getRequestDispatcher("actualizarUsuario.jsp").forward(request, response);

                }

                break;
            case 4:

                if (usuDAO.actualizarRegistro()) {
                    request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");

                } else {
                    request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                }

                request.getRequestDispatcher("consultarUsuario.jsp").forward(request, response);

                break;
            case 5:

                funVO = funDAO.ConsultarRegistros(FunId);
                if (funVO != null) {

                    request.setAttribute("UsuarioConsultado", funVO);
                    request.getRequestDispatcher("actualizarFuncionario.jsp").forward(request, response);

                } else {

                    request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                    request.getRequestDispatcher("actualizarFuncionario.jsp").forward(request, response);

                }
                break;

            case 6:

                if (funDAO.actualizarRegistro()) {
                    request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");

                } else {
                    request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                }

                request.getRequestDispatcher("consultarFuncionario.jsp").forward(request, response);
                break;

            case 7:

                if (funDAO.eliminarRegistro()) {
                    if (usuDAO.eliminarRegistro()) {

                    } else {
                        request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                    }

                    request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");

                } else {
                    request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                }

                request.getRequestDispatcher("consultarFuncionario.jsp").forward(request, response);
                break;
            case 8:
                usuVo = usuDAO.VerificarFuncionario(FunTipoDoc, FunDoc);
                if (usuVo != null) {
                    request.setAttribute("mensajeError", "<script src=\"assets/js/Alerta.js\"></script>");
                    HttpSession buscarSesion = request.getSession();
                    buscarSesion.removeAttribute("datosUsuario");
                    buscarSesion.removeAttribute("DatosCargados");
                    buscarSesion.removeAttribute("rol");
                    buscarSesion.invalidate();
                    request.getRequestDispatcher("Login.jsp").forward(request, response);
                } else {

                    if (funDAO.agregarRegistro()) {

                        if (usuDAO.olvidoClave2()) {
                            request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");
                            HttpSession buscarSesion = request.getSession();
                            buscarSesion.removeAttribute("datosUsuario");
                            buscarSesion.removeAttribute("DatosCargados");
                            buscarSesion.removeAttribute("rol");
                            buscarSesion.invalidate();
                            request.getRequestDispatcher("Login.jsp").forward(request, response);
                        } else {
                            request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                            HttpSession buscarSesion = request.getSession();
                            buscarSesion.removeAttribute("datosUsuario");
                            buscarSesion.removeAttribute("DatosCargados");
                            buscarSesion.removeAttribute("rol");
                            buscarSesion.invalidate();
                            request.getRequestDispatcher("Login.jsp").forward(request, response);
                        }
                    } else {
                        request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                        HttpSession buscarSesion = request.getSession();
                        buscarSesion.removeAttribute("datosUsuario");
                        buscarSesion.removeAttribute("DatosCargados");
                        buscarSesion.removeAttribute("rol");
                        buscarSesion.invalidate();
                        request.getRequestDispatcher("Login.jsp").forward(request, response);
                    }
                    HttpSession buscarSesion = request.getSession();
                    buscarSesion.removeAttribute("datosUsuario");
                    buscarSesion.removeAttribute("DatosCargados");
                    buscarSesion.removeAttribute("rol");
                    buscarSesion.invalidate();
                    request.getRequestDispatcher("Login.jsp").forward(request, response);
                }
                break;
            case 9:

                if (usuDAO.eliminarRegistro()) {
                    if (funDAO.eliminarRegistroU()) {

                    } else {
                        request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                    }

                    request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");

                } else {
                    request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                }

                request.getRequestDispatcher("consultarUsuario.jsp").forward(request, response);
                break;
            case 10:

                funVO = funDAO.ConsultarRegistros(UsuId);
                if (funVO != null) {

                    request.setAttribute("UsuarioConsultado", funVO);
                    request.getRequestDispatcher("editarDatos.jsp").forward(request, response);

                } else {

                    request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                    request.getRequestDispatcher("editarDatos.jsp").forward(request, response);

                }
                break;
            case 11:

                if (funDAO.actualizarRegistro2()) {
                    request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");

                } else {
                    request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                }

                request.getRequestDispatcher("index.jsp").forward(request, response);
                break;
            case 12:
                usuVo = usuDAO.Gmail(UsuCorreo);
                if (usuVo != null) {
                    if (usuDAO.olvidoClave()) {
                        try {
                            String destinatario = UsuCorreo;
                            String asunto = "Usted ha cambiado la contraseña";
                            String contenido = "Su Correo es " + UsuCorreo + " Y su Contraseña es " + UsuPassword;
                            forget.enviarConGMail(destinatario, asunto, contenido, usuario, clave);
                        } catch (Exception e) {
                            e.printStackTrace();

                        } finally {

                        }
                        request.setAttribute("mensaje2", "Se le ha enviado una contraseña temporal");
                        request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");

                    } else {
                        request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                    }
                } else {
                    request.setAttribute("mensaje", "El correo no existe");
                    request.setAttribute("mensajeError", "<script src=\"assets/js/Olvido.js\"></script>");
                }
                request.getRequestDispatcher("Login.jsp").forward(request, response);
                break;

            case 13:
                if (usuDAO.iniciarSesion(UsuCorreo, UsuEstado)) {

                    if (usuDAO.olvidoClave2()) {
                        request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");
                        HttpSession buscarSesion = request.getSession();
                        buscarSesion.removeAttribute("datosUsuario");
                        buscarSesion.removeAttribute("DatosCargados");
                        buscarSesion.removeAttribute("rol");
                        buscarSesion.invalidate();
                        request.getRequestDispatcher("Login").forward(request, response);
                    } else {
                        request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                        request.getRequestDispatcher("cambiarClave.jsp").forward(request, response);
                    }

                } else {
                    request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                    request.getRequestDispatcher("cambiarClave.jsp").forward(request, response);
                }
                
                break;
            case 14:
                if (rolDAO.agregarRegistro(RolNombre)) {
                    request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");
                } else {
                    request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                }
                request.getRequestDispatcher("configuracion.jsp").forward(request, response);
                break;
            case 15:
                if (rolDAO.actualizarRegistro(RolId,RolNombre)) {
                  request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");
                } else {
                    request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                }
                request.getRequestDispatcher("configuracion.jsp").forward(request, response);
                break;
            case 16:
                if (rolDAO.eliminarRegistro(RolId)) {
                  request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");
                } else {
                    request.setAttribute("mensajeError", "<script src=\"assets/js/Error.js\"></script>");
                }
                request.getRequestDispatcher("configuracion.jsp").forward(request, response);
                break;
            case 17:
                try {
                            
                            String asunto = "Un usuario esta tratando de contactarnos";
                            String contenido = "Correo: " + UsuCorreo + " Nombre: " + UsuNombre + " Telefono: " + FunCelular;
                            forget.enviarConGMail("terrenmvc@gmail.com", asunto, contenido, usuario, clave);
                        } catch (Exception e) {
                            e.printStackTrace();

                        } finally {

                }
                request.getRequestDispatcher("Login.jsp").forward(request, response);
                request.setAttribute("mensajeExito", "<script src=\"assets/js/Bien.js\"></script>");
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
