/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.RolVO;
import Util.Conexion;
import Util.Crud;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Camilo
 */
public class RolDAO extends Conexion {

    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    private boolean operacion = false;
    private String sql;

    private String RolId = "", RolNombre = "";
    
    public RolDAO(RolVO rolVO) {

        super();

        try {
            
            conexion = this.obtenerConexión();
            RolId = rolVO.getRolId();
            RolNombre = rolVO.getRolNombre();
            
            
        } catch (Exception e) {

            Logger.getLogger(RolDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }
    
    public ArrayList<RolVO> listar() {

        ArrayList<RolVO> listaRoles = new ArrayList<>();

        try {
            conexion = this.obtenerConexión();
            sql = "select * from rol";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {

                RolVO rolVO = new RolVO(mensajero.getString(1), mensajero.getString(2));
                listaRoles.add(rolVO);

            }

        } catch (Exception e) {
            Logger.getLogger(RolVO.class.getName()).log(Level.SEVERE, null, e);

        }

        return listaRoles;
    }

    public ArrayList<RolVO> ListarPuestos() {

        ArrayList<RolVO> ListarPuestos = new ArrayList<>();

        try {

            conexion = this.obtenerConexión();
            sql = "SELECT * FROM ListarPuestos";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                RolVO rolVO = new RolVO(mensajero.getString(2), mensajero.getString(1));
                ListarPuestos.add(rolVO);

            }

        } catch (Exception e) {
            Logger.getLogger(RolVO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();
            } catch (SQLException e) {
                Logger.getLogger(RolVO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return ListarPuestos;
    }

    public boolean agregarRegistro(String NombrePuesto) {

        try {
            sql = "Call AgregarPuesto(?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, NombrePuesto);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(RolDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();
            } catch (SQLException e) {
                Logger.getLogger(RolDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }
        return operacion;
    }
    public boolean actualizarRegistro(String Id, String NombrePuesto) {
        //UPDATE funcionario set FUN_NOMBRE=?, FUN_APELLIDO=?,FUN_TIPO_DOC=?,FUN_NUM_DOC=?,FUN_CELULAR=?,FUN_CORREO=?,FUN_DIRECCION=?,FK_puesto=?,FUN_SEXO=?,FUN_FECHA_NACIMIENTO=? WHERE FUN_ID=?
        try {
            
            
            sql = "Call ActualizarPuesto(?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Id);
            puente.setString(2, NombrePuesto);
            
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(RolDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();
            } catch (SQLException e) {
                Logger.getLogger(RolDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }
        return operacion;
    }
    public boolean eliminarRegistro(String Id) {

        try {
            sql = "Call BorrarPuesto(?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, Id);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(RolDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            try {
                this.cerrarConexión();
            } catch (SQLException e) {
                Logger.getLogger(RolDAO.class.getName()).log(Level.SEVERE, null, e);

            }
        }
        return operacion;
    }
    //clientes en la vista
    public RolVO CantidadDeClientes() {
        RolVO rolVO = null;

        try {

            conexion = this.obtenerConexión();
            sql = "SELECT * from cantidaddeclientes";
            puente = conexion.prepareStatement(sql);            
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                rolVO = new RolVO(
                        mensajero.getString(1));

            }

        } catch (SQLException e) {

            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return rolVO;

    }
    //Solicitudes en la vista
    public RolVO Solicitud() {
        RolVO rolVO = null;

        try {

            conexion = this.obtenerConexión();
            sql = "SELECT * FROM `vistasolicitudindex`";
            puente = conexion.prepareStatement(sql);            
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                rolVO = new RolVO(
                        mensajero.getString(1));

            }

        } catch (SQLException e) {

            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return rolVO;

    }
}
