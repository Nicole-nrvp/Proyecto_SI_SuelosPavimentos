/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.FuncionarioVO;
import Util.Conexion;
import Util.Crud;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Camilo
 */
public class FuncionarioDAO extends Conexion implements Crud{
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;
    
    private String FunId="",FunNombre="",FunApellido="",FunTipoDoc="",FunDoc="",
            FunCelular="",FunSexo="",FunFechaNacimiento="",FunDireccion="",FunCorreo="",FunPuesto="";
    
    public FuncionarioDAO(FuncionarioVO funVO){
        
        super();
        try {
            conexion = this.obtenerConexión();
            FunId = funVO.getFunId();
            FunNombre = funVO.getFunNombre();
            FunApellido = funVO.getFunApellido();
            FunTipoDoc = funVO.getFunTipoDoc();
            FunDoc = funVO.getFunDoc();
            FunCelular = funVO.getFunCelular();
            FunSexo = funVO.getFunSexo();
            FunFechaNacimiento = funVO.getFechaNacimiento();
            FunDireccion = funVO.getFunDireccion();
            FunCorreo = funVO.getFunCorreo();
            FunPuesto = funVO.getFunPuesto();
        } catch (Exception e) {
             Logger.getLogger(FuncionarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        
        
    }
    
    @Override
    public boolean agregarRegistro() {
        try {
            sql = "";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, FunNombre);
            puente.setString(2, FunApellido);
            puente.setString(3, FunTipoDoc);
            puente.setString(4, FunDoc);
            puente.setString(5, FunCelular);
            puente.setString(6, FunCorreo);
            puente.setString(7, FunDireccion);
            puente.setString(8, FunPuesto);
            puente.setString(9, FunSexo);
            puente.setString(10, FunFechaNacimiento);
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
            sql = "";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, FunNombre);
            puente.setString(2, FunApellido);
            puente.setString(3, FunTipoDoc);
            puente.setString(4, FunDoc);
            puente.setString(5, FunCelular);
            puente.setString(6, FunCorreo);
            puente.setString(7, FunDireccion);
            puente.setString(8, FunPuesto);
            puente.setString(9, FunSexo);
            puente.setString(10, FunFechaNacimiento);
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
            sql = "";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, FunId);
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
    
}
