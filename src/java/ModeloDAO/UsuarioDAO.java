/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Util.forget;
import ModeloVO.FuncionarioVO;
import ModeloVO.RolVO;
import ModeloVO.UsuarioVO;
import Util.Conexion;
import Util.Crud;
import Util.PasswordGenerator;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;

/**
 *
 * @author Camilo
 */
public class UsuarioDAO extends Conexion implements Crud {
//1.  Declarar variables u objetos 

    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;

    private String usuId = "", UsuNombre = "", UsuPassword = "", UsuCorreo = "", Rol = "", UsuEstado = "";
    PasswordGenerator password = new PasswordGenerator();

    //2. Metodo principal para recibir los datos del VO
    public UsuarioDAO(UsuarioVO usuVO) {

        super();

        try {
            //3.Conectarse a la BD 
            conexion = this.obtenerConexión();
            //4. Traer el DAO los datos del VO para la operacion
            usuId = usuVO.getUsuId();
            UsuNombre = usuVO.getUsuNombre();
            UsuCorreo = usuVO.getUsuCorreo();
            UsuPassword = usuVO.getUsuPassword();
            UsuEstado = usuVO.getUsuEstado();
            Rol = usuVO.getUsuRol();

        } catch (Exception e) {

            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public boolean agregarRegistro() {

        try {
            sql = "call add_usuario(?,?,?,?,'ACTIVO')";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, UsuCorreo);
            puente.setString(2, UsuPassword);
            puente.setString(3, UsuNombre);
            puente.setString(4, Rol);
            puente.executeUpdate();

            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();
            } catch (SQLException e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }
        return operacion;
    }

    @Override
    public boolean actualizarRegistro() {
        try {
            sql = "CALL ps_actualizar_usuario(?,?,?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, UsuNombre);
            puente.setString(2, UsuCorreo);
            puente.setString(3, UsuEstado);
            puente.setString(4, Rol);
            puente.setString(5, usuId);

            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();
            } catch (SQLException e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return operacion;
    }

    @Override
    public boolean eliminarRegistro() {
        try {
            sql = "call ps_eliminar_usuario(?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, usuId);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();
            } catch (SQLException e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }
        return operacion;
    }

    public boolean iniciarSesion(String correo, String clave) {
        try {

            conexion = this.obtenerConexión();
            sql = "CALL ps_iniciar_sesion(?,?,'ACTIVO')";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, correo);
            puente.setString(2, clave);
            mensajero = puente.executeQuery();
            if (mensajero.next()) {
                //UsuarioVO usuVO = new UsuarioVO(mensajero.getString(1), mensajero.getString(2));
                operacion = true;
            }

        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);

        } finally {
            //this.cerrarConexion();

        }
        return operacion;

    }

    public ArrayList<UsuarioVO> rol(String correo) {

        ArrayList<UsuarioVO> listaRoles = new ArrayList<>();

        try {

            conexion = this.obtenerConexión();
            sql = "Call ps_listar_rol(?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, correo);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                UsuarioVO usuVO = new UsuarioVO(mensajero.getString(1), mensajero.getString(2));
                listaRoles.add(usuVO);
            }

        } catch (Exception e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }

        return listaRoles;
    }

    public UsuarioVO ConsultarUsuario(String Usuario) {
        UsuarioVO usuVO = null;

        try {

            conexion = this.obtenerConexión();
            sql = "CALL ps_consultar_usuario(?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Usuario);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                usuVO = new UsuarioVO(
                        mensajero.getString(1),
                        mensajero.getString(2),
                        mensajero.getString(3),
                        mensajero.getString(4),
                        mensajero.getString(5),
                        mensajero.getString(6));

            }

        } catch (SQLException e) {

            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return usuVO;

    }

    public UsuarioVO ConsultarUsuario2(String Id) {
        UsuarioVO usuVO = null;

        try {

            conexion = this.obtenerConexión();
            sql = "CALL ps_consultar_usuario2(?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Id);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                usuVO = new UsuarioVO(
                        mensajero.getString(1),
                        mensajero.getString(2),
                        mensajero.getString(3),
                        mensajero.getString(4),
                        mensajero.getString(5),
                        mensajero.getString(6),
                        mensajero.getString(7));

            }

        } catch (SQLException e) {

            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return usuVO;

    }

    public UsuarioVO Gmail(String correo) {
        UsuarioVO usuVO = null;

        try {

            conexion = this.obtenerConexión();
            sql = "call ps_verificar_correo(?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, correo);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                usuVO = new UsuarioVO(
                        mensajero.getString(1)
                );

            }

        } catch (SQLException e) {

            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return usuVO;

    }

    public ArrayList<UsuarioVO> listar() {

        ArrayList<UsuarioVO> ListaUsuario = new ArrayList<>();

        try {
            conexion = this.obtenerConexión();
            sql = "SELECT * FROM `listarusuario`";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {

                UsuarioVO usuVO = new UsuarioVO(
                        mensajero.getString(1),
                        mensajero.getString(2),
                        mensajero.getString(3),
                        mensajero.getString(4),
                        mensajero.getString(5),
                        mensajero.getString(6));

                ListaUsuario.add(usuVO);

            }

        } catch (Exception e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);

        } finally {
            try {
                this.cerrarConexión();
            } catch (SQLException e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return ListaUsuario;
    }

    public boolean olvidoClave() {

        try {
            //UPDATE usuario set USU_CLAVE=md5(?),USU_VERIFICATION_PASSWORD=0 WHERE USU_CORREO=?
            sql = "CALL ps_olvidoClave(?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, UsuPassword);
            puente.setString(2, UsuCorreo);

            puente.executeUpdate();

            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();
            } catch (SQLException e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }
        return operacion;
    }

    public boolean olvidoClave2() {

        try {
            //UPDATE usuario set USU_CLAVE=md5(?),USU_VERIFICATION_PASSWORD=1 WHERE USU_CORREO=?
            sql = "CALL ps_olvidoClave2(?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, UsuPassword);
            puente.setString(2, UsuCorreo);

            puente.executeUpdate();

            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();
            } catch (SQLException e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }
        return operacion;
    }
    
    /*
    public boolean recuperarClave() {

        try {
            sql = "UPDATE usuario set USU_CLAVE=md5(?),USU_VERIFICATION_PASSWORD=1 WHERE USU_CORREO=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, UsuPassword);
            puente.setString(2, UsuCorreo);

            puente.executeUpdate();

            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();
            } catch (SQLException e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }
        return operacion;
    }*/

    public UsuarioVO ConsultarUsuario3(String Usuario) {
        UsuarioVO usuVO = null;

        try {

            conexion = this.obtenerConexión();
            sql = "CALL ps_consultar_usuario(?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Usuario);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                usuVO = new UsuarioVO(
                        mensajero.getString(1),
                        mensajero.getString(2));

            }

        } catch (SQLException e) {

            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return usuVO;

    }

    public UsuarioVO VerificarFuncionario(String Tipo,String CC) {
        UsuarioVO usuVO = null;

        try {

            conexion = this.obtenerConexión();
            sql = "CALL ps_VerificarFuncionario(?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Tipo);
            puente.setString(2, CC);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                usuVO = new UsuarioVO(
                        mensajero.getString(1),
                        mensajero.getString(2));

            }

            

        } catch (SQLException e) {

            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return usuVO;

    }
}
