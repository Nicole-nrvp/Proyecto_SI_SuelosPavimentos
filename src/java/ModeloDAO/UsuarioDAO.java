/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;


import ModeloVO.FuncionarioVO;
import ModeloVO.RolVO;
import ModeloVO.UsuarioVO;
import Util.Conexion;
import Util.Crud;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author Camilo
 */
public class UsuarioDAO extends Conexion implements Crud{
//1.  Declarar variables u objetos 

    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;

    private String usuId = "", UsuNombre = "", UsuPassword = "",UsuCorreo="", Rol="";
    
    
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
            Rol = usuVO.getUsuRol();
            

        } catch (Exception e) {

            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }
    @Override
    public boolean agregarRegistro() {
        try {
            sql = "INSERT into usuario(USU_CORREO,USU_CLAVE,USU_NOMBRE,FK_rol) "
                    + "VALUES(?,md5(?),?,?)";
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
            sql = "UPDATE usuario set USU_NOMBRE=?,USU_CORREO=?,USU_CLAVE=md5(?) WHERE USU_ID=?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, UsuNombre);
            puente.setString(2, UsuCorreo);
            puente.setString(3, UsuPassword);
            puente.setString(4, usuId);
            
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
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    public boolean iniciarSesion(String correo, String clave){
        try {

            conexion = this.obtenerConexión();
            sql = "select * from usuario where USU_CORREO=? and USU_CLAVE=md5(?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, correo);
            puente.setString(2, clave);
            mensajero = puente.executeQuery();
            if (mensajero.next()) {
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
            sql = "SELECT usuario.USU_ID,ROL_NOMBRE FROM usuario INNER JOIN rol on usuario.FK_rol = rol.ROL_ID WHERE usuario.USU_CORREO =?";
            puente  = conexion.prepareStatement(sql);
            puente.setString(1,correo);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                UsuarioVO usuVO = new UsuarioVO(mensajero.getString(1),mensajero.getString(2));
                listaRoles.add(usuVO);
            }

        } catch (Exception e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
            

        
        return listaRoles;
    }
    public ArrayList<UsuarioVO> listar() {

        ArrayList<UsuarioVO> ListaUsuario = new ArrayList<>();

        try {
            conexion = this.obtenerConexión();
            sql = "SELECT USU_NOMBRE,USU_CORREO FROM usuario";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {

                UsuarioVO usuVO = new UsuarioVO(
                        mensajero.getString(1),
                        mensajero.getString(2));

                ListaUsuario.add(usuVO);

            }

        } catch (Exception e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);

        }finally {
            try {
                this.cerrarConexión();
            } catch (SQLException e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return ListaUsuario;
    }
    
    }

