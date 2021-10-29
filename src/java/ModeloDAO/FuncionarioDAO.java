/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.FuncionarioVO;
import ModeloVO.UsuarioVO;
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
public class FuncionarioDAO extends Conexion implements Crud {

    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;

    private String FunId = "", FunNombre = "", FunApellido = "", FunTipoDoc = "", FunDoc = "",
            FunCelular = "", FunSexo = "", FunFechaNacimiento = "", FunDireccion = "", FunCorreo = "", FunPuesto = "", FunEstado = "";

    public FuncionarioDAO(FuncionarioVO funVO) {

        super();
        try {
            UsuarioVO usuVO = new UsuarioVO();
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
            FunEstado = funVO.getFunEstado();
        } catch (Exception e) {
            Logger.getLogger(FuncionarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }

    }

    @Override
    public boolean agregarRegistro() {
        try {
            //INSERT INTO funcionario(FK_usuario,FUN_NOMBRE,FUN_APELLIDO,FUN_CELULAR,FUN_TIPO_DOC,FUN_NUM_DOC,FUN_CORREO,FUN_SEXO,FUN_FECHA_NACIMIENTO, FUN_DIRECCION,FK_puesto,FUN_ESTADO) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)
            sql = "call add_funcionario(?,?,?,?,?,?,?,?,?,?,?,?);";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, FunId);
            puente.setString(2, FunNombre);
            puente.setString(3, FunApellido);
            puente.setString(4, FunCelular);
            puente.setString(5, FunTipoDoc);
            puente.setString(6, FunDoc);
            puente.setString(7, FunCorreo);
            puente.setString(8, FunSexo);
            puente.setString(9, FunFechaNacimiento);
            puente.setString(10, FunDireccion);
            puente.setString(11, FunPuesto);
            puente.setString(12, FunEstado);
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
        //UPDATE funcionario set FUN_NOMBRE=?, FUN_APELLIDO=?,FUN_TIPO_DOC=?,FUN_NUM_DOC=?,FUN_CELULAR=?,FUN_CORREO=?,FUN_DIRECCION=?,FK_puesto=?,FUN_SEXO=?,FUN_FECHA_NACIMIENTO=? WHERE FUN_ID=?
        try {
            String Sexo = "";
            if (FunSexo.equals("Mujer")) {
                Sexo = "2";
            } else {
                Sexo = "1";
            }
            sql = "CALL ps_actualizarFun(?,?,?,?,?,?,?,?,?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, FunNombre);
            puente.setString(2, FunApellido);
            puente.setString(3, FunTipoDoc);
            puente.setString(4, FunDoc);
            puente.setString(5, FunCelular);
            puente.setString(6, FunCorreo);
            puente.setString(7, FunDireccion);
            puente.setString(8, FunPuesto);
            puente.setString(9, Sexo);
            puente.setString(10, FunFechaNacimiento);
            puente.setString(11, FunId);
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
        public boolean actualizarRegistro2() {

        try {
            String Sexo = "";
            if (FunSexo.equals("Mujer")) {
                Sexo = "2";
            } else {
                Sexo = "1";
            }
            sql = "CALL ps_actualizarFun2(?,?,?,?,?,?,?,?,?,?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, FunNombre);
            puente.setString(2, FunApellido);
            puente.setString(3, FunTipoDoc);
            puente.setString(4, FunDoc);
            puente.setString(5, FunCelular);
            puente.setString(6, FunCorreo);
            puente.setString(7, FunDireccion);
            puente.setString(8, Sexo);
            puente.setString(9, FunFechaNacimiento);
            puente.setString(10, FunId);
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
            sql = "CALL ps_eliminarRegistroFun(?)";
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
    
    public boolean eliminarRegistroU() {
        try {
            sql = "CALL ps_eliminarRegistroFun2(?)";
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

    public FuncionarioVO ConsultarRegistros(String FunId) {
        FuncionarioVO funVO = null;
        try {

            conexion = this.obtenerConexión();
            sql = "CALL ps_consultarRegustrosFun(?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, FunId);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                funVO = new FuncionarioVO(
                        FunId,
                        mensajero.getString(2),
                        mensajero.getString(3),
                        mensajero.getString(4),
                        mensajero.getString(5),
                        mensajero.getString(6),
                        mensajero.getString(7),
                        mensajero.getString(8),
                        mensajero.getString(9),
                        mensajero.getString(10),
                        mensajero.getString(11),
                        mensajero.getString(12));

            }

        } catch (SQLException e) {

            Logger.getLogger(FuncionarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return funVO;

    }

    public FuncionarioVO rectificar(String FunId) {
        FuncionarioVO funVO = null;
        try {

            conexion = this.obtenerConexión();
            sql = "CALL ps_rectificarFuncionario(?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, FunId);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {

                funVO = new FuncionarioVO(
                        mensajero.getString(1),
                        mensajero.getString(2),
                        mensajero.getString(3),
                        mensajero.getString(4),
                        mensajero.getString(5),
                        mensajero.getString(6),
                        mensajero.getString(7),
                        mensajero.getString(8),
                        mensajero.getString(9),
                        mensajero.getString(10),
                        mensajero.getString(11),
                        mensajero.getString(12));

            }

        } catch (SQLException e) {

            Logger.getLogger(FuncionarioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return funVO;

    }

    public ArrayList<FuncionarioVO> listar() {

        ArrayList<FuncionarioVO> ListaUsuario = new ArrayList<>();

        try {
            conexion = this.obtenerConexión();
            sql = "SELECT * FROM `listarfuncionario`";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {

                FuncionarioVO funVO = new FuncionarioVO(
                        mensajero.getString(1),
                        mensajero.getString(2),
                        mensajero.getString(3),
                        mensajero.getString(4),
                        mensajero.getString(5),
                        mensajero.getString(6),
                        mensajero.getString(7),
                        mensajero.getString(8),
                        mensajero.getString(9),
                        mensajero.getString(10),
                        mensajero.getString(11),
                        mensajero.getString(12));

                ListaUsuario.add(funVO);

            }

        } catch (Exception e) {
            Logger.getLogger(FuncionarioDAO.class.getName()).log(Level.SEVERE, null, e);

        } finally {
            try {
                this.cerrarConexión();
            } catch (SQLException e) {
                Logger.getLogger(FuncionarioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return ListaUsuario;
    }

}
